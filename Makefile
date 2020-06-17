CC=gcc



ifneq ($(KERNELRELEASE),)
# call from kernel build system


obj-m	+= hello-1.o
obj-m	+= hello-2.o
obj-m	+= hello-3.o
obj-m	+= hello-4.o


else

KERNELDIR ?= /lib/modules/$(shell uname -r)/build
PWD       := $(shell pwd)

modules:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules


clean:
	rm -rf *.o *~ core .depend .*.cmd *.ko *.mod.c .tmp_versions *.order *.symvers

endif