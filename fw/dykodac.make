# Alternative GNU Make project makefile autogenerated by Premake

ifndef config
  config=debug
endif

ifndef verbose
  SILENT = @
endif

.PHONY: clean prebuild

SHELLTYPE := posix
ifeq (.exe,$(findstring .exe,$(ComSpec)))
	SHELLTYPE := msdos
endif

# Configurations
# #############################################

ifeq ($(origin CC), default)
  CC = "C:\\arm-gcc\8.2.1-1.2-20190119-1237\bin\arm-none-eabi-gcc.exe"
endif
ifeq ($(origin CXX), default)
  CXX = "C:\\arm-gcc\8.2.1-1.2-20190119-1237\bin\arm-none-eabi-g++.exe"
endif
ifeq ($(origin AR), default)
  AR = "C:\\arm-gcc\8.2.1-1.2-20190119-1237\bin\arm-none-eabi-ar.exe"
endif
RESCOMP = "C:\\arm-gcc\8.2.1-1.2-20190119-1237\bin\arm-none-eabi-windres.exe"
TARGETDIR = build/bin
TARGET = $(TARGETDIR)/dykodac_Debug.elf
OBJDIR = build/Debug/obj
DEFINES += -D__SAMD51J20A__ -DDEBUG
INCLUDES += -Isrc -Isrc/config -Isrc/libs -Isrc/sys_boot -Isrc/vendor_libs -Isrc/config/vendor_libs_config -Isrc/libs/communication -Isrc/libs/general -Isrc/libs/communication/bus -Isrc/libs/communication/usb -Isrc/vendor_libs/CMSIS -Isrc/vendor_libs/examples -Isrc/vendor_libs/gcc -Isrc/vendor_libs/hal -Isrc/vendor_libs/hpl -Isrc/vendor_libs/hri -Isrc/vendor_libs/samd51a -Isrc/vendor_libs/usb -Isrc/vendor_libs/CMSIS/Core -Isrc/vendor_libs/CMSIS/Documentation -Isrc/vendor_libs/CMSIS/Core/Include -Isrc/vendor_libs/CMSIS/Documentation/Core -Isrc/vendor_libs/CMSIS/Documentation/Core/html -Isrc/vendor_libs/hal/documentation -Isrc/vendor_libs/hal/include -Isrc/vendor_libs/hal/src -Isrc/vendor_libs/hal/utils -Isrc/vendor_libs/hal/utils/include -Isrc/vendor_libs/hal/utils/src -Isrc/vendor_libs/hpl/cmcc -Isrc/vendor_libs/hpl/core -Isrc/vendor_libs/hpl/dmac -Isrc/vendor_libs/hpl/evsys -Isrc/vendor_libs/hpl/gclk -Isrc/vendor_libs/hpl/i2s -Isrc/vendor_libs/hpl/mclk -Isrc/vendor_libs/hpl/nvmctrl -Isrc/vendor_libs/hpl/osc32kctrl -Isrc/vendor_libs/hpl/oscctrl -Isrc/vendor_libs/hpl/pm -Isrc/vendor_libs/hpl/port -Isrc/vendor_libs/hpl/ramecc -Isrc/vendor_libs/hpl/rtc -Isrc/vendor_libs/hpl/sercom -Isrc/vendor_libs/hpl/systick -Isrc/vendor_libs/hpl/usb -Isrc/vendor_libs/hpl/wdt -Isrc/vendor_libs/samd51a/include -Isrc/vendor_libs/samd51a/include/component -Isrc/vendor_libs/samd51a/include/instance -Isrc/vendor_libs/samd51a/include/pio -Isrc/vendor_libs/usb/class -Isrc/vendor_libs/usb/device -Isrc/vendor_libs/usb/class/cdc -Isrc/vendor_libs/usb/class/cdc/device
FORCE_INCLUDE +=
ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -Og -g -mcpu=cortex-m4 -mfloat-abi=softfp -mfpu=fpv4-sp-d16  -O1 -g3  -Wall -ffunction-sections -mlong-calls -mthumb
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -Og -g -mcpu=cortex-m4 -mfloat-abi=softfp -mfpu=fpv4-sp-d16  -O1 -g3  -Wall -ffunction-sections -mlong-calls -mthumb
ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
LIBS +=
LDDEPS +=
ALL_LDFLAGS += $(LDFLAGS) -Lsrc/vendor_libs/CMSIS -Lsrc/vendor_libs/examples -Lsrc/vendor_libs/gcc -Lsrc/vendor_libs/hal -Lsrc/vendor_libs/hpl -Lsrc/vendor_libs/hri -Lsrc/vendor_libs/samd51a -Lsrc/vendor_libs/usb -Lsrc/vendor_libs/CMSIS/Core -Lsrc/vendor_libs/CMSIS/Documentation -Lsrc/vendor_libs/CMSIS/Core/Include -Lsrc/vendor_libs/CMSIS/Documentation/Core -Lsrc/vendor_libs/CMSIS/Documentation/Core/html -Lsrc/vendor_libs/hal/documentation -Lsrc/vendor_libs/hal/include -Lsrc/vendor_libs/hal/src -Lsrc/vendor_libs/hal/utils -Lsrc/vendor_libs/hal/utils/include -Lsrc/vendor_libs/hal/utils/src -Lsrc/vendor_libs/hpl/cmcc -Lsrc/vendor_libs/hpl/core -Lsrc/vendor_libs/hpl/dmac -Lsrc/vendor_libs/hpl/evsys -Lsrc/vendor_libs/hpl/gclk -Lsrc/vendor_libs/hpl/i2s -Lsrc/vendor_libs/hpl/mclk -Lsrc/vendor_libs/hpl/nvmctrl -Lsrc/vendor_libs/hpl/osc32kctrl -Lsrc/vendor_libs/hpl/oscctrl -Lsrc/vendor_libs/hpl/pm -Lsrc/vendor_libs/hpl/port -Lsrc/vendor_libs/hpl/ramecc -Lsrc/vendor_libs/hpl/rtc -Lsrc/vendor_libs/hpl/sercom -Lsrc/vendor_libs/hpl/systick -Lsrc/vendor_libs/hpl/usb -Lsrc/vendor_libs/hpl/wdt -Lsrc/vendor_libs/samd51a/include -Lsrc/vendor_libs/samd51a/include/component -Lsrc/vendor_libs/samd51a/include/instance -Lsrc/vendor_libs/samd51a/include/pio -Lsrc/vendor_libs/usb/class -Lsrc/vendor_libs/usb/device -Lsrc/vendor_libs/usb/class/cdc -Lsrc/vendor_libs/usb/class/cdc/device -T "./src/sys_boot/samd51j20a_flash.ld" -g3 -mcpu=cortex-m4 -mfloat-abi=softfp -mfpu=fpv4-sp-d16  -Wl,--start-group -lm -Wl,--end-group -mthumb --specs=nosys.specs -Wl,--gc-sections
LINKCMD = $(CXX) -o "$@" $(OBJECTS) $(RESOURCES) $(ALL_LDFLAGS) $(LIBS)
define PREBUILDCMDS
endef
define PRELINKCMDS
endef
define POSTBUILDCMDS
	@echo Running postbuild commands
	"C://arm-gcc/8.2.1-1.2-20190119-1237/bin/arm-none-eabi-objcopy" -O binary "build/bin/dykodac_Debug.elf" "build/bin/dykodac_Debug.bin"
	"C://arm-gcc/8.2.1-1.2-20190119-1237/bin/arm-none-eabi-objdump" --source --all-headers --demangle --debugging --disassemble --file-headers --line-numbers --reloc --syms --wide "build/bin/dykodac_Debug.elf" > build/bin/dykodac_Debug.lss
	"C://arm-gcc/8.2.1-1.2-20190119-1237/bin/arm-none-eabi-size" --format=berkeley --totals "build/bin/dykodac_Debug.elf"
endef

# Per File Configurations
# #############################################

PERFILE_FLAGS_0 = $(ALL_CXXFLAGS) -std=gnu++1y -fabi-version=0 -fno-exceptions -fno-rtti -fno-use-cxa-atexit -fno-threadsafe-statics -fcheck-new
PERFILE_FLAGS_1 = $(ALL_CFLAGS) -std=gnu11

# File sets
# #############################################

OBJECTS :=

OBJECTS += $(OBJDIR)/I2S_SAMD51.o
OBJECTS += $(OBJDIR)/OutputPin.o
OBJECTS += $(OBJDIR)/UAC1_USB.o
OBJECTS += $(OBJDIR)/cdcdf_acm.o
OBJECTS += $(OBJDIR)/driver_init.o
OBJECTS += $(OBJDIR)/hal_atomic.o
OBJECTS += $(OBJDIR)/hal_cache.o
OBJECTS += $(OBJDIR)/hal_delay.o
OBJECTS += $(OBJDIR)/hal_evsys.o
OBJECTS += $(OBJDIR)/hal_flash.o
OBJECTS += $(OBJDIR)/hal_gpio.o
OBJECTS += $(OBJDIR)/hal_i2c_m_sync.o
OBJECTS += $(OBJDIR)/hal_i2s_controller_sync.o
OBJECTS += $(OBJDIR)/hal_init.o
OBJECTS += $(OBJDIR)/hal_io.o
OBJECTS += $(OBJDIR)/hal_sleep.o
OBJECTS += $(OBJDIR)/hal_spi_m_sync.o
OBJECTS += $(OBJDIR)/hal_timer.o
OBJECTS += $(OBJDIR)/hal_usb_device.o
OBJECTS += $(OBJDIR)/hal_wdt.o
OBJECTS += $(OBJDIR)/hpl_cmcc.o
OBJECTS += $(OBJDIR)/hpl_core_m4.o
OBJECTS += $(OBJDIR)/hpl_dmac.o
OBJECTS += $(OBJDIR)/hpl_evsys.o
OBJECTS += $(OBJDIR)/hpl_gclk.o
OBJECTS += $(OBJDIR)/hpl_i2s.o
OBJECTS += $(OBJDIR)/hpl_init.o
OBJECTS += $(OBJDIR)/hpl_mclk.o
OBJECTS += $(OBJDIR)/hpl_nvmctrl.o
OBJECTS += $(OBJDIR)/hpl_osc32kctrl.o
OBJECTS += $(OBJDIR)/hpl_oscctrl.o
OBJECTS += $(OBJDIR)/hpl_pm.o
OBJECTS += $(OBJDIR)/hpl_ramecc.o
OBJECTS += $(OBJDIR)/hpl_rtc.o
OBJECTS += $(OBJDIR)/hpl_sercom.o
OBJECTS += $(OBJDIR)/hpl_systick.o
OBJECTS += $(OBJDIR)/hpl_usb.o
OBJECTS += $(OBJDIR)/hpl_wdt.o
OBJECTS += $(OBJDIR)/main.o
OBJECTS += $(OBJDIR)/startup_samd51.o
OBJECTS += $(OBJDIR)/system_samd51.o
OBJECTS += $(OBJDIR)/usb_protocol.o
OBJECTS += $(OBJDIR)/usbdc.o
OBJECTS += $(OBJDIR)/utils_assert.o
OBJECTS += $(OBJDIR)/utils_event.o
OBJECTS += $(OBJDIR)/utils_list.o
OBJECTS += $(OBJDIR)/utils_syscalls.o

# Rules
# #############################################

all: $(TARGET)
	@:

$(TARGET): $(OBJECTS) $(LDDEPS) | $(TARGETDIR)
	$(PRELINKCMDS)
	@echo Linking dykodac
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(TARGETDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(TARGETDIR))
endif

$(OBJDIR):
	@echo Creating $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif

clean:
	@echo Cleaning dykodac
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild: | $(OBJDIR)
	$(PREBUILDCMDS)

ifneq (,$(PCH))
$(OBJECTS): $(GCH) | $(PCH_PLACEHOLDER)
$(GCH): $(PCH) | prebuild
	@echo $(notdir $<)
	$(SILENT) $(CXX) -x c++-header $(ALL_CXXFLAGS) -o "$@" -MF "$(@:%.gch=%.d)" -c "$<"
$(PCH_PLACEHOLDER): $(GCH) | $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) touch "$@"
else
	$(SILENT) echo $null >> "$@"
endif
else
$(OBJECTS): | prebuild
endif


# File Rules
# #############################################

$(OBJDIR)/UAC1_USB.o: src/UAC1_USB.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(PERFILE_FLAGS_0) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/driver_init.o: src/driver_init.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(PERFILE_FLAGS_1) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/I2S_SAMD51.o: src/libs/communication/bus/I2S_SAMD51.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(PERFILE_FLAGS_0) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/OutputPin.o: src/libs/general/OutputPin.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(PERFILE_FLAGS_0) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/main.o: src/main.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(PERFILE_FLAGS_0) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/startup_samd51.o: src/sys_boot/startup_samd51.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(PERFILE_FLAGS_1) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/system_samd51.o: src/sys_boot/system_samd51.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(PERFILE_FLAGS_1) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hal_atomic.o: src/vendor_libs/hal/src/hal_atomic.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(PERFILE_FLAGS_1) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hal_cache.o: src/vendor_libs/hal/src/hal_cache.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(PERFILE_FLAGS_1) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hal_delay.o: src/vendor_libs/hal/src/hal_delay.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(PERFILE_FLAGS_1) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hal_evsys.o: src/vendor_libs/hal/src/hal_evsys.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(PERFILE_FLAGS_1) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hal_flash.o: src/vendor_libs/hal/src/hal_flash.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(PERFILE_FLAGS_1) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hal_gpio.o: src/vendor_libs/hal/src/hal_gpio.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(PERFILE_FLAGS_1) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hal_i2c_m_sync.o: src/vendor_libs/hal/src/hal_i2c_m_sync.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(PERFILE_FLAGS_1) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hal_i2s_controller_sync.o: src/vendor_libs/hal/src/hal_i2s_controller_sync.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(PERFILE_FLAGS_1) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hal_init.o: src/vendor_libs/hal/src/hal_init.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(PERFILE_FLAGS_1) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hal_io.o: src/vendor_libs/hal/src/hal_io.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(PERFILE_FLAGS_1) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hal_sleep.o: src/vendor_libs/hal/src/hal_sleep.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(PERFILE_FLAGS_1) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hal_spi_m_sync.o: src/vendor_libs/hal/src/hal_spi_m_sync.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(PERFILE_FLAGS_1) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hal_timer.o: src/vendor_libs/hal/src/hal_timer.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(PERFILE_FLAGS_1) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hal_usb_device.o: src/vendor_libs/hal/src/hal_usb_device.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(PERFILE_FLAGS_1) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hal_wdt.o: src/vendor_libs/hal/src/hal_wdt.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(PERFILE_FLAGS_1) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/utils_assert.o: src/vendor_libs/hal/utils/src/utils_assert.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(PERFILE_FLAGS_1) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/utils_event.o: src/vendor_libs/hal/utils/src/utils_event.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(PERFILE_FLAGS_1) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/utils_list.o: src/vendor_libs/hal/utils/src/utils_list.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(PERFILE_FLAGS_1) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/utils_syscalls.o: src/vendor_libs/hal/utils/src/utils_syscalls.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(PERFILE_FLAGS_1) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hpl_cmcc.o: src/vendor_libs/hpl/cmcc/hpl_cmcc.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(PERFILE_FLAGS_1) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hpl_core_m4.o: src/vendor_libs/hpl/core/hpl_core_m4.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(PERFILE_FLAGS_1) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hpl_init.o: src/vendor_libs/hpl/core/hpl_init.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(PERFILE_FLAGS_1) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hpl_dmac.o: src/vendor_libs/hpl/dmac/hpl_dmac.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(PERFILE_FLAGS_1) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hpl_evsys.o: src/vendor_libs/hpl/evsys/hpl_evsys.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(PERFILE_FLAGS_1) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hpl_gclk.o: src/vendor_libs/hpl/gclk/hpl_gclk.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(PERFILE_FLAGS_1) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hpl_i2s.o: src/vendor_libs/hpl/i2s/hpl_i2s.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(PERFILE_FLAGS_1) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hpl_mclk.o: src/vendor_libs/hpl/mclk/hpl_mclk.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(PERFILE_FLAGS_1) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hpl_nvmctrl.o: src/vendor_libs/hpl/nvmctrl/hpl_nvmctrl.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(PERFILE_FLAGS_1) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hpl_osc32kctrl.o: src/vendor_libs/hpl/osc32kctrl/hpl_osc32kctrl.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(PERFILE_FLAGS_1) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hpl_oscctrl.o: src/vendor_libs/hpl/oscctrl/hpl_oscctrl.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(PERFILE_FLAGS_1) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hpl_pm.o: src/vendor_libs/hpl/pm/hpl_pm.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(PERFILE_FLAGS_1) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hpl_ramecc.o: src/vendor_libs/hpl/ramecc/hpl_ramecc.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(PERFILE_FLAGS_1) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hpl_rtc.o: src/vendor_libs/hpl/rtc/hpl_rtc.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(PERFILE_FLAGS_1) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hpl_sercom.o: src/vendor_libs/hpl/sercom/hpl_sercom.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(PERFILE_FLAGS_1) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hpl_systick.o: src/vendor_libs/hpl/systick/hpl_systick.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(PERFILE_FLAGS_1) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hpl_usb.o: src/vendor_libs/hpl/usb/hpl_usb.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(PERFILE_FLAGS_1) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hpl_wdt.o: src/vendor_libs/hpl/wdt/hpl_wdt.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(PERFILE_FLAGS_1) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/cdcdf_acm.o: src/vendor_libs/usb/class/cdc/device/cdcdf_acm.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(PERFILE_FLAGS_1) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/usbdc.o: src/vendor_libs/usb/device/usbdc.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(PERFILE_FLAGS_1) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/usb_protocol.o: src/vendor_libs/usb/usb_protocol.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(PERFILE_FLAGS_1) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(PCH_PLACEHOLDER).d
endif