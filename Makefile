CC=gcc



ifneq ($(KERNELRELEASE),)
# call from kernel build system


obj-m	+= hello-1.o
obj-m	+= hello-2.o

else

KERNELDIR ?= /lib/modules/$(shell uname -r)/build
PWD       := $(shell pwd)

modules:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules

endif