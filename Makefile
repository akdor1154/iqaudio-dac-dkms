
obj-m := iqaudio-dac.o
dtbo-y += iqaudio-dacplus.dtbo

KVERSION := $(shell uname -r)


all: $(dtbo-y)
	$(MAKE) -C /lib/modules/$(KVERSION)/build M=$(PWD) modules
clean:
	$(MAKE) -C /lib/modules/$(KVERSION)/build M=$(PWD) clean
