
obj-m := iqaudio-dac.o

export KVERSION := $(shell uname -r)

DIRS = overlays
BUILDDIRS = $(DIRS:%=build-%)
CLEANDIRS = $(DIRS:%=clean-%)


all: $(BUILDDIRS)
	$(MAKE) -C /lib/modules/$(KVERSION)/build M=$(PWD)
$(DIRS): $(BUILDDIRS)
$(BUILDDIRS):
	$(MAKE) -C $(@:build-%=%)
clean:
	$(MAKE) -C /lib/modules/$(KVERSION)/build M=$(PWD) clean
