
// Serial Driver (serial_driver.c)
// DeZean Gardner

//-----------------------------------------------------------------------------
// Hardware Target
//-----------------------------------------------------------------------------

// Target Platform: Xilinx XUP Blackboard

// Hardware configuration:
// 
// AXI4-Lite interface
//   Mapped to offset of 0x20000
// 
// QE 0 and 1 interface:
//   GPIO[0] is used for TX
//   GPIO[1] is used for RX

// Load kernel module with insmod serial_driver.ko [param=___]

//-----------------------------------------------------------------------------
#include <linux/interrupt.h>
#include <linux/slab.h>
#include <linux/irq.h>
#include <linux/platform_device.h>
#include <linux/of.h>
#include <linux/of_device.h>
#include <linux/of_irq.h>
#include <linux/types.h>
#include "../address_map.h"
#include "serial_regs.h"

#include <linux/kernel.h>     // kstrtouint
#include <linux/module.h>     // MODULE_ macros
#include <linux/init.h>       // __init
#include <linux/kobject.h>    // kobject, kobject_atribute,
                              // kobject_create_and_add, kobject_put
#include <asm/io.h>           // iowrite, ioread, ioremap_nocache (platform specific)
#include "../address_map.h"   // overall memory map
#include "serial_regs.h"          // register offsets in Serial IP

//-----------------------------------------------------------------------------
// Kernel module information
//-----------------------------------------------------------------------------

MODULE_LICENSE("GPL");
MODULE_AUTHOR("DeZean Gardner");
MODULE_DESCRIPTION("Serial IP Driver");

//-----------------------------------------------------------------------------
// Global variables
//-----------------------------------------------------------------------------

static unsigned int *base = NULL;

//-----------------------------------------------------------------------------
// Subroutines
//-----------------------------------------------------------------------------
void setBaudRate(uint32_t baudRate)
{
    iowrite32(baudRate, base + OFS_BAUD_RATE );
}

uint32_t whatsTheBaudRate(void)
{
     return ioread32(base + OFS_BAUD_RATE);
}

void enableBaud(uint8_t channel)
{
     unsigned int value = ioread32(base + OFS_CONTROL);
     iowrite32(value | (1 << channel), base + OFS_CONTROL);
}


void disableBaud(uint8_t channel)
{
    unsigned int value = ioread32(base + OFS_CONTROL);
    iowrite32(value & ~(1 << channel), base + OFS_CONTROL);
}

bool isBaudEnabled(uint8_t channel)
{
    return (ioread32(base + OFS_CONTROL) >> channel) & 1 ;
}
/////////////////////////////////////////////////////////////////////

void enableInterrupt(uint8_t channel)
{
     unsigned int value = ioread32(base + OFS_CONTROL);
     iowrite32(value | (1 << channel), base + OFS_CONTROL);
}


void disableInterrupt(uint8_t channel)
{
    unsigned int value = ioread32(base + OFS_CONTROL);
    iowrite32(value & ~(1 << channel), base + OFS_CONTROL);
}

bool isInterruptEnabled(uint8_t channel)
{
    return (ioread32(base + OFS_CONTROL) >> channel) & 1 ;
}

//////////////////////////////////////////////////////////////////////

void setSingleStopBit(uint8_t channel)
{
    unsigned int value = ioread32(base + OFS_CONTROL);
    iowrite32(value & ~(1 << channel), base + OFS_CONTROL);
}

void setSecondStopBit(uint8_t channel)
{
     unsigned int value = ioread32(base + OFS_CONTROL);
     iowrite32(value | (1 << channel), base + OFS_CONTROL);
}


bool isSecondStopBitSet(uint8_t channel)
{
    return (ioread32(base + OFS_CONTROL) >> channel) & 1 ;
}

//////////////////////////////////////////////////////////////////////
void enableTestOutput(uint8_t channel)
{
     unsigned int value = ioread32(base + OFS_CONTROL);
     iowrite32(value | (1 << channel), base + OFS_CONTROL);
}

void disableTestOutput(uint8_t channel)
{
    unsigned int value = ioread32(base + OFS_CONTROL);
    iowrite32(value & ~(1 << channel), base + OFS_CONTROL);
}

bool isTestOutputEnabled(uint8_t channel)
{
    return (ioread32(base + OFS_CONTROL) >> channel) & 1 ;
}
//////////////////////////////////////////////////////////////////////

void setDataLength(uint8_t dataLength)
{
    unsigned int value = ioread32(base + OFS_CONTROL);
    iowrite32(value & ~(0b11 ), base + OFS_CONTROL);
    
         if(dataLength == 5) iowrite32(value | 0, base + OFS_CONTROL);
    else if(dataLength == 6) iowrite32(value | 1, base + OFS_CONTROL);  
    else if(dataLength == 7) iowrite32(value | 2, base + OFS_CONTROL);
    else if(dataLength == 8) iowrite32(value | 3, base + OFS_CONTROL);      
    
}

uint32_t whatsTheDataLength(uint8_t channel)
{
    return (ioread32(base + OFS_CONTROL) >> channel) & 3 ;  
}

//////////////////////////////////////////////////////////////////////
void setParityMode(uint8_t mode, uint8_t channel)
{
    unsigned int value = ioread32(base + OFS_CONTROL);
    iowrite32(value & ~(0b11 << 2) , base + OFS_CONTROL);
    
         if(mode == 0) iowrite32(value | (mode << channel), base + OFS_CONTROL);
    else if(mode == 1) iowrite32(value | (mode << channel), base + OFS_CONTROL);  
    else if(mode == 2) iowrite32(value | (mode << channel), base + OFS_CONTROL);
    else if(mode == 3) iowrite32(value | (mode << channel), base + OFS_CONTROL);   
    else iowrite32(value | 0 << 2, base + OFS_CONTROL);                      	// default parity is none    
    
}

uint32_t whatsTheParityMode (uint8_t channel)
{
	return (ioread32(base + OFS_CONTROL) >> channel) & 3 ;
}
//////////////////////////////////////////////////////////////////////

void writeToTxFifo(uint8_t value)
{
    iowrite32(value , base + OFS_DATA);    
    
}

uint32_t readFromRxFifo(void)
{
    return ioread32(base + OFS_DATA);  
}

//-----------------------------------------------------------------------------
// Kernel Objects
//-----------------------------------------------------------------------------

/////////////////////////////////////// Set Baud Rate/////////////////////////////////////////

static int baudRate = 0;
module_param(baudRate, int, S_IRUGO);
MODULE_PARM_DESC(baudRate, "Baud Rate");

static ssize_t setBaudRate_Store(struct kobject *kobj, struct kobj_attribute *attr, const char *buffer, size_t count)
{
     int result = kstrtouint(buffer, 0, &baudRate);
     if (result == 0 )setBaudRate(baudRate);
     return count;
}

static ssize_t whatsTheBaudRate_Show(struct kobject *kobj, struct kobj_attribute *attr, char *buffer)
{
    baudRate = whatsTheBaudRate();  
    return sprintf(buffer, "%d\n", baudRate);
}

static struct kobj_attribute baudRateAttr = __ATTR(baudRate, 0664, whatsTheBaudRate_Show, setBaudRate_Store);

/////////////////////////////////////Baud Rate Enable/////////////////////////////////////////

static bool baudEnabled = 0;
module_param(baudEnabled, bool, S_IRUGO);
MODULE_PARM_DESC(baudEnabled, " Enable Baud");

static ssize_t baudEnabled_Store(struct kobject *kobj, struct kobj_attribute *attr, const char *buffer, size_t count)
{
    if (strncmp(buffer, "true", strlen("true")) == 0)
    {
        enableBaud(4);
        baudEnabled = true;
    }
    else if (strncmp(buffer, "false", strlen("false")) == 0)
    {
	    disableBaud(4);
	    baudEnabled = false;
     }
    return count;
}

static ssize_t baudEnabled_Show(struct kobject *kobj, struct kobj_attribute *attr, char *buffer)
{

    baudEnabled = isBaudEnabled(4);
    if (baudEnabled)
        strcpy(buffer, "true\n");
    else
        strcpy(buffer, "false\n");

    return strlen(buffer);
}

static struct kobj_attribute enableBaudAttr = __ATTR(baudEnabled, 0664, baudEnabled_Show, baudEnabled_Store);
			
/////////////////////////////////////Test Output Pin Enable/////////////////////////////////////////

static bool testOutput = 0;
module_param(testOutput, bool, S_IRUGO);
MODULE_PARM_DESC(testOutput, " Enable Test Output");

static ssize_t enableTestOutput_Store(struct kobject *kobj, struct kobj_attribute *attr, const char *buffer, size_t count)
{
    if (strncmp(buffer, "true", strlen("true")) == 0)
    {
        enableTestOutput(5);
        testOutput = true;
    }
    else if (strncmp(buffer, "false", strlen("false")) == 0)
    {
	    disableTestOutput(5);
	    testOutput = false;
     }
    return count;
}

static ssize_t enableTestOutput_Show(struct kobject *kobj, struct kobj_attribute *attr, char *buffer)
{

    testOutput = isTestOutputEnabled(5);
    if (testOutput)
        strcpy(buffer, "true\n");
    else
        strcpy(buffer, "false\n");

    return strlen(buffer);
}


static struct kobj_attribute enableTestOutputAttr = __ATTR(testOutput, 0664, enableTestOutput_Show, enableTestOutput_Store);
					// Owner/Group/Users   = Octal RW/RW/R								

/////////////////////////////////////Enable Interrupts/////////////////////////////////////////

static bool enabledInterrupt = 0;
module_param(enabledInterrupt, bool, S_IRUGO);
MODULE_PARM_DESC(enabledInterrupt, " Enable Test Output");

static ssize_t enableInterrupt_Store(struct kobject *kobj, struct kobj_attribute *attr, const char *buffer, size_t count)
{
    if (strncmp(buffer, "true", strlen("true")) == 0)
    {
        enableInterrupt(6);
        testOutput = true;
    }
    else if (strncmp(buffer, "false", strlen("false")) == 0)
    {
	    disableInterrupt(6);
	    testOutput = false;
     }
    return count;
}

static ssize_t enableInterrupt_Show(struct kobject *kobj, struct kobj_attribute *attr, char *buffer)
{

    testOutput = isInterruptEnabled(6);
    if (testOutput)
        strcpy(buffer, "true\n");
    else
        strcpy(buffer, "false\n");

    return strlen(buffer);
}


static struct kobj_attribute enableInterruptAttr = __ATTR(enabledInterrupt, 0664, enableInterrupt_Show, enableInterrupt_Store);
					// Owner/Group/Users   = Octal RW/RW/R								

/////////////////////////////////// Data Length////////////////////////////////////
static int dataLength = 0;
module_param(dataLength, int, S_IRUGO);
MODULE_PARM_DESC(dataLength, "Baud Data Length");

static ssize_t setDataLength_Store(struct kobject *kobj, struct kobj_attribute *attr, const char *buffer, size_t count)
{
    int result = kstrtouint(buffer, 0, &dataLength);
    	 if (result == 8) setDataLength(result);
    else if (result == 7) setDataLength(result);
    else if (result == 6) setDataLength(result);
    else if (result == 5) setDataLength(result);
    else setDataLength(8);
    return count;
}

static ssize_t whatsTheDataLength_Show(struct kobject *kobj, struct kobj_attribute *attr, char *buffer)
{
    dataLength = whatsTheDataLength(0);
    	 if(dataLength == 0) dataLength = 5;
    else if(dataLength == 1) dataLength = 6;
    else if(dataLength == 2) dataLength = 7;
    else if(dataLength == 3) dataLength = 8;    
    return sprintf(buffer, "%d\n", dataLength);
}

static struct kobj_attribute dataLengthAttr = __ATTR(dataLength, 0664, whatsTheDataLength_Show, setDataLength_Store);


//////////////////////////////////// Parity Mode ///////////////////////////////////////////////
static int parityMode = 0;
module_param(parityMode, int, S_IRUGO);
MODULE_PARM_DESC(parityMode, "Baud Parity Mode");

static ssize_t setParityMode_Store(struct kobject *kobj, struct kobj_attribute *attr, const char *buffer, size_t count)
{
    if (strncmp(buffer, "none", strlen("none")) == 0)
    {
        setParityMode(0,2);
        parityMode = 0;
    }
    else
    if (strncmp(buffer, "odd", strlen("odd")) == 0)
    {
    	setParityMode(1,2);
    	parityMode = 1;
    }
    else
    if (strncmp(buffer, "even", strlen("even")) == 0)
    {
    	setParityMode(2,2);
    	parityMode = 2;
    }
    else
    if (strncmp(buffer, "all", strlen("all")) == 0)
    {
    	setParityMode(3,2);
    	parityMode = 3;
    }        
    return count;
}

static ssize_t whatsTheParityMode_Show (struct kobject *kobj, struct kobj_attribute *attr, char *buffer)
{
    parityMode = whatsTheParityMode(2);
      
    return sprintf(buffer, "%d\n", parityMode);
}

static struct kobj_attribute parityModeAttr = __ATTR(parityMode, 0664, whatsTheParityMode_Show, setParityMode_Store);

/////////////////////////////////////// Set Second Stop/////////////////////////////////////////

static bool secondStopBit = 0;
module_param(secondStopBit, bool, S_IRUGO);
MODULE_PARM_DESC(secondStopBit, " Enable Second Stop Bit");

static ssize_t secondStopBit_Store(struct kobject *kobj, struct kobj_attribute *attr, const char *buffer, size_t count)
{
    if (strncmp(buffer, "true", strlen("true")) == 0)
    {
        setSecondStopBit(8);
        secondStopBit = true;
    }
    else if (strncmp(buffer, "false", strlen("false")) == 0)
    {
	    setSingleStopBit(8);
	    secondStopBit = false;
     }
    return count;
}

static ssize_t secondStopBit_Show(struct kobject *kobj, struct kobj_attribute *attr, char *buffer)
{

    secondStopBit = isSecondStopBitSet(8);
    if (secondStopBit)
        strcpy(buffer, "true\n");
    else
        strcpy(buffer, "false\n");

    return strlen(buffer);
}

static struct kobj_attribute secondStopBitAttr = __ATTR(secondStopBit, 0664, secondStopBit_Show, secondStopBit_Store);


///////////////////////////////////////RX Fifo Info/////////////////////////////////////////
static int rxData = 0;
static uint32_t rx_buffer[1024];
static uint16_t readIndex = 0;	
static uint16_t writeIndex= 0;

module_param(rxData, int, S_IRUGO);
MODULE_PARM_DESC(rxData, "Rx Fifo");

static ssize_t rxData_Store(struct kobject *kobj, struct kobj_attribute *attr, const char *buffer, size_t count)
{
 return count;
}

static ssize_t rxData_Show(struct kobject *kobj, struct kobj_attribute *attr, char *buffer)
{
    
	if (readIndex < writeIndex) readIndex = (readIndex + 1) % 1024;
    return sprintf(buffer, "%d\n", rx_buffer[readIndex]);
}

static struct kobj_attribute rxDataAttr = __ATTR(rx_data, 0664, rxData_Show, rxData_Store);


static struct attribute *attrs0[] = 
{
	 &enableBaudAttr.attr,
	 &dataLengthAttr.attr,
	 &parityModeAttr.attr,
     	&baudRateAttr.attr,
     	&enableTestOutputAttr.attr, 
	 &secondStopBitAttr.attr,
     	&rxDataAttr.attr,
     	&enableInterruptAttr.attr,	 	 	 
	 NULL
 };



static struct attribute_group group0 =
{
    .name = "BaudSettings",
    .attrs = attrs0
};


static struct kobject *kobj;

static irqreturn_t isr(int irq, void *dev_id)
{
    uint32_t value;
    
    printk(KERN_INFO "serial isr: IRQ_F2P[2] occurred\n");

    value = ioread32(base + OFS_DATA);
    printk("serial isr: Value in Buffer  %08x\n", value);    
    
    rx_buffer[writeIndex] = value;
    writeIndex = (writeIndex + 1) % 1024 ;
    

    return IRQ_HANDLED;
}

static int probe(struct platform_device* dev)
{
    int result = 0;
    unsigned int irq;
    printk(KERN_INFO "serial isr: probe\n");

    irq = irq_of_parse_and_map(dev->dev.of_node, 0);
    printk(KERN_INFO "serial isr: found irq = %d in device tree\n", irq);

    result = request_irq(irq, isr, IRQF_SHARED, "serial ip", &dev->dev);
    if (result != 0)
        printk(KERN_INFO "serial isr: request_irq returned %d\n", result);
    else
        printk(KERN_INFO "serial isr: request_irq was successful\n");    
    
    return result;
}

static int remove(struct platform_device* dev)
{
    printk(KERN_INFO "serial isr: remove\n");

    free_irq(of_irq_get(dev->dev.of_node, 0), &dev->dev);

    return 0;
}

static struct of_device_id driver_of_match[] = {
    { .compatible = "xlnx,soc-axi4lite-reserved-jl", },
//    { .compatible = "xlnx,v-tc-6.2\0xlnx,v-tc-6.1", },
    {}
};

static struct platform_driver driver = {
    .probe = probe,
    .remove = remove,
    .driver = {
        .name = "serial isr",
        .owner = THIS_MODULE,
        .of_match_table = driver_of_match,
    },
};

//-----------------------------------------------------------------------------
// Initialization and Exit
//-----------------------------------------------------------------------------

static int __init initialize_module(void)
{
    int result;

    printk(KERN_INFO "Serial driver: starting\n");

    // Create serial directory under /sys/kernel
    kobj = kobject_create_and_add("serial", NULL); //kernel_kobj);
    if (!kobj)
    {
        printk(KERN_ALERT "Serial driver: failed to create and add kobj\n");
        return -ENOENT;
    }

    // Create Serial Control Groups
    result = sysfs_create_group(kobj, &group0);
    if (result !=0)
        return result;
 
    // Physical to virtual memory map to access serial registers
    base = (unsigned int*)ioremap(AXI4_LITE_BASE + SERIAL_BASE_OFFSET,
                                          SPAN_IN_BYTES);
    if (base == NULL)
        return -ENODEV;

    printk(KERN_INFO "Serial driver: initialized\n");

    // Register platform driver
    if (platform_driver_register(&driver)) 
    {                                                     
        printk(KERN_WARNING "serial isr: failed to register platform driver\n");
        return -1;                                                
    }
    printk(KERN_INFO "serial isr: registered platform driver\n");
    printk(KERN_INFO "serial isr: ioremap returned 0x%p\n", base);
    printk(KERN_INFO "serial isr: initialize done\n");

    return 0;
}

static void __exit exit_module(void)
{
    kobject_put(kobj);
    platform_driver_unregister(&driver);
    printk(KERN_INFO "Serial driver: exit\n");
}

module_init(initialize_module);
module_exit(exit_module);

