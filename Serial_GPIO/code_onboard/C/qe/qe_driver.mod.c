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
	{ 0x7fffffff, "_printk" },
	{ 0x7fffffff, "kobject_create_and_add" },
	{ 0x21bac8fa, "sysfs_create_group" },
	{ 0x7fffffff, "ioremap" },
	{ 0x7fffffff, "__aeabi_unwind_cpp_pr0" },
	{ 0x3c3ff9fd, "sprintf" },
	{ 0x7fffffff, "kobject_put" },
	{ 0x7fffffff, "arm_heavy_mb" },
	{ 0x7fffffff, "strncmp" },
	{ 0x7fffffff, "strcpy" },
	{ 0x7fffffff, "strlen" },
	{ 0x3b6c41ea, "kstrtouint" },
	{ 0x7fffffff, "param_ops_uint" },
	{ 0x7fffffff, "param_ops_int" },
	{ 0x7fffffff, "param_ops_bool" },
	{ 0x69d6813f, "module_layout" },
};

MODULE_INFO(depends, "");

