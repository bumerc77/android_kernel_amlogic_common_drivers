# SPDX-License-Identifier: GPL-2.0

KERNEL_SRC ?= /lib/modules/$(shell uname -r)/build
M ?= $(shell pwd)

obj-m += drivers/
obj-m += sound/

modules modules_install clean:
	$(MAKE) -C $(KERNEL_SRC) M=$(M) COMMON_DRIVERS_DIR=../common_drivers $(@)
