CC=gcc



ifneq ($(KERNELRELEASE),)
# call from kernel build system


obj-m	+= chardev.o


else

KERNELDIR ?= /lib/modules/$(shell uname -r)/build
PWD       := $(shell pwd)

modules:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules


clean:
	rm -rf *.o *~ core .depend .*.cmd *.ko *.mod.c .tmp_versions *.order *.symvers .cache.mk ioctl

endif