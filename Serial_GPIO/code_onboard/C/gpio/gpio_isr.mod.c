#include <linux/module.h>
#define INCLUDE_VERMAGIC
#include <linux/build-salt.h>
#include <linux/elfnote-lto.h>
#include <linux/export-internal.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

BUILD_SALT;
BUILD_LTO_INFO;

MODULE_INFO(vermagic, VERMAGIC_STRING);
MODULE_INFO(name, KBUILD_MODNAME);

__visible struct module __this_module
__section(".gnu.linkonce.this_module") = {
	.name = KBUILD_MODNAME,
	.init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
	.exit = cleanup_module,
#endif
	.arch = MODULE_ARCH_INIT,
};

#ifdef CONFIG_RETPOLINE
MODULE_INFO(retpoline, "Y");
#endif


static const struct modversion_info ____versions[]
__used __section("__versions") = {
	{ 0xc13ee17, "__platform_driver_register" },
	{ 0x7fffffff, "_printk" },
	{ 0x7fffffff, "ioremap" },
	{ 0x7fffffff, "__aeabi_unwind_cpp_pr0" },
	{ 0x3b8383b0, "of_irq_get" },
	{ 0x7fffffff, "free_irq" },
	{ 0x7fffffff, "arm_heavy_mb" },
	{ 0x7d3f43d5, "platform_driver_unregister" },
	{ 0x7fffffff, "irq_of_parse_and_map" },
	{ 0x7fffffff, "request_threaded_irq" },
	{ 0x69d6813f, "module_layout" },
};

MODULE_INFO(depends, "");

MODULE_ALIAS("of:N*T*Cxlnx,soc-axi4lite-reserved-jl");
MODULE_ALIAS("of:N*T*Cxlnx,soc-axi4lite-reserved-jlC*");
