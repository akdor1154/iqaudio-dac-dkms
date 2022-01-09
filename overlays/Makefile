DTC ?= dtc
DTC_FLAGS ?= -@

%.dtbo: %.dts
	@$(DTC) $(DTC_FLAGS) -I dts -O dtb -o $@ $^

dtbo := iqaudio-dacplus.dtbo

all: $(dtbo)


clean:
	rm *.dtbo
