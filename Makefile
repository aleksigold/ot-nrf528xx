rcp:
	./script/build nrf52840 USB_trans -DOT_BOOTLOADER=USB CFLAGS+=-UCONFIG_GPIO_AS_PINRESET
	arm-none-eabi-objcopy -O ihex build/bin/ot-rcp build/bin/ot-rcp.hex
	uf2conv build/bin/ot-rcp.hex -c -f 0xADA52840 -o build/bin/ot-rcp.uf2

clean:
	rm -rf ./build