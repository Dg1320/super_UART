// GPIO IP Example
// GPIO IP ISR Default Handler (gpio_isr.c)
// Jason Losh

//-----------------------------------------------------------------------------
// Hardware Target
//-----------------------------------------------------------------------------

// Target Platform: Xilinx XUP Blackboard

// Hardware configuration:
//
// AXI4-Lite interface:
//   Mapped to offset of 0
//
// IRQ interface:
//   IRQ_F2P[2] is used as the interrupt interface to the PS
//
// GPIO interface:
//   GPIO[31-0] is used as a general purpose GPIO port

//-----------------------------------------------------------------------------

#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/interrupt.h>
#include <linux/init.h>
#include <linux/slab.h>
#include <linux/irq.h>
#include <linux/platform_device.h>
#include <linux/of.h>
#include <linux/of_device.h>
#include <linux/of_irq.h>
#include <linux/slab.h>
#include <linux/types.h>
#include <asm/io.h>           // iowrite, ioread (platform specific)
#include "../address_map.h"
#include "gpio_regs.h"

//-----------------------------------------------------------------------------
// Global variables
//-----------------------------------------------------------------------------

uint32_t *gpio = NULL;

//-----------------------------------------------------------------------------
// Kernel module information
//-----------------------------------------------------------------------------

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Jason Losh");
MODULE_DESCRIPTION("GPIO IP Interrupt Handler");

//-----------------------------------------------------------------------------
// ISR
//-----------------------------------------------------------------------------

static irqreturn_t isr(int irq, void *dev_id)
{
    uint32_t value;
    printk(KERN_INFO "gpio isr: IRQ_F2P[2] occurred\n");

    // Disable all interrupts
    iowrite32(0x00000000, gpio + OFS_INT_ENABLE);

    // Display active interrupts
    value = ioread32(gpio + OFS_INT_STATUS_CLEAR);
    printk("gpio isr: interrupt flags before clear  %08x\n", value);

    // Clear interrupt flags
    iowrite32(0xFFFFFFFF, gpio + OFS_INT_STATUS_CLEAR);

    // Display active interrupts
    value = ioread32(gpio + OFS_INT_STATUS_CLEAR);
    printk("gpio isr: interrupt flags after clear: %08x\n", value);

    return IRQ_HANDLED;
}

//-----------------------------------------------------------------------------
// Pro
//-----------------------------------------------------------------------------

static int probe(struct platform_device* dev)
{
    int result = 0;
    unsigned int irq;
    printk(KERN_INFO "gpio isr: probe\n");

    irq = irq_of_parse_and_map(dev->dev.of_node, 0);
    printk(KERN_INFO "gpio isr: found irq = %d in device tree\n", irq);

    result = request_irq(irq, isr, IRQF_SHARED, "gpio ip", &dev->dev);
    if (result != 0)
        printk(KERN_INFO "gpio isr: request_irq returned %d\n", result);
    else
        printk(KERN_INFO "gpio isr: request_irq was successful\n");    
    
    return result;
}

static int remove(struct platform_device* dev)
{
    printk(KERN_INFO "gpio isr: remove\n");

    free_irq(of_irq_get(dev->dev.of_node, 0), &dev->dev);

    return 0;
}

static struct of_device_id driver_of_match[] = {
    { .compatible = "xlnx,soc-axi4lite-reserved-jl", },
//    { .compatible = "xlnx,v-tc-6.2\0xlnx,v-tc-6.1", },
    {}
};
MODULE_DEVICE_TABLE(of, driver_of_match);

static struct platform_driver driver = {
    .probe = probe,
    .remove = remove,
    .driver = {
        .name = "gpio isr",
        .owner = THIS_MODULE,
        .of_match_table = driver_of_match,
    },
};

static int __init initialize_module(void)
{
    // Register platform driver
    if (platform_driver_register(&driver)) 
    {                                                     
        printk(KERN_WARNING "gpio isr: failed to register platform driver\n");
        return -1;                                                
    }
    printk(KERN_INFO "gpio isr: registered platform driver\n");

    // Physical to virtual memory map to access gpio registers
    gpio = (uint32_t*)ioremap(AXI4_LITE_BASE + GPIO_BASE_OFFSET, SPAN_IN_BYTES);
    if (gpio == NULL)
    {
        printk(KERN_WARNING "gpio isr: ioremap failed\n");
        return -EIO;
    }
    printk(KERN_INFO "gpio isr: ioremap returned 0x%p\n", gpio);
    printk(KERN_INFO "gpio isr: initialize done\n");

    return 0;
}

static void __exit exit_module(void)
{
    platform_driver_unregister(&driver);
    printk(KERN_INFO "gpio isr: exit\n");
}

module_init(initialize_module);
module_exit(exit_module);
