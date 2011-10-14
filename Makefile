#
# OMNeT++/OMNEST Makefile for libmixim-sommer
#
# This file was generated with the command:
#  opp_makemake -f --make-so -O out -d base -d tests -d examples -d modules -Xinet -Xout -L./out/$(CONFIGNAME)/base -L./out/$(CONFIGNAME)/tests/power/utils -L./out/$(CONFIGNAME)/tests/testUtils -L./out/$(CONFIGNAME)/modules
#

# Name of target to be created (-o option)
TARGET = libmixim-sommer$(SHARED_LIB_SUFFIX)

# C++ include paths (with -I)
INCLUDE_PATH = -I.

# Additional object and library files to link with
EXTRA_OBJS =

# Additional libraries (-L, -l options)
LIBS = -Lout/$(CONFIGNAME)/base -Lout/$(CONFIGNAME)/tests/power/utils -Lout/$(CONFIGNAME)/tests/testUtils -Lout/$(CONFIGNAME)/modules
LIBS += -Wl,-rpath,`abspath out/$(CONFIGNAME)/base` -Wl,-rpath,`abspath out/$(CONFIGNAME)/tests/power/utils` -Wl,-rpath,`abspath out/$(CONFIGNAME)/tests/testUtils` -Wl,-rpath,`abspath out/$(CONFIGNAME)/modules`

# Output directory
PROJECT_OUTPUT_DIR = out
PROJECTRELATIVE_PATH =
O = $(PROJECT_OUTPUT_DIR)/$(CONFIGNAME)/$(PROJECTRELATIVE_PATH)

# Object files for local .cc and .msg files
OBJS =

# Message files
MSGFILES =

#------------------------------------------------------------------------------

# Pull in OMNeT++ configuration (Makefile.inc or configuser.vc)

ifneq ("$(OMNETPP_CONFIGFILE)","")
CONFIGFILE = $(OMNETPP_CONFIGFILE)
else
ifneq ("$(OMNETPP_ROOT)","")
CONFIGFILE = $(OMNETPP_ROOT)/Makefile.inc
else
CONFIGFILE = $(shell opp_configfilepath)
endif
endif

ifeq ("$(wildcard $(CONFIGFILE))","")
$(error Config file '$(CONFIGFILE)' does not exist -- add the OMNeT++ bin directory to the path so that opp_configfilepath can be found, or set the OMNETPP_CONFIGFILE variable to point to Makefile.inc)
endif

include $(CONFIGFILE)

# Simulation kernel and user interface libraries
OMNETPP_LIB_SUBDIR = $(OMNETPP_LIB_DIR)/$(TOOLCHAIN_NAME)
OMNETPP_LIBS = -L"$(OMNETPP_LIB_SUBDIR)" -L"$(OMNETPP_LIB_DIR)" -loppenvir$D $(KERNEL_LIBS) $(SYS_LIBS)

COPTS = $(CFLAGS)  $(INCLUDE_PATH) -I$(OMNETPP_INCL_DIR)
MSGCOPTS = $(INCLUDE_PATH)

#------------------------------------------------------------------------------
# User-supplied makefile fragment(s)
# >>>
# inserted from file 'makefrag':
examples_dir: modules_dir
tests_dir: modules_dir
modules_dir: base_dir

# <<<
#------------------------------------------------------------------------------

# Main target
all: $(TARGET)

$(TARGET) : $O/$(TARGET)
	$(LN) $O/$(TARGET) .

$O/$(TARGET): $(OBJS) submakedirs $(wildcard $(EXTRA_OBJS)) Makefile
	@$(MKPATH) $O
	$(SHLIB_LD) -o $O/$(TARGET)  $(OBJS) $(EXTRA_OBJS) $(LIBS) $(OMNETPP_LIBS) $(LDFLAGS)
	$(SHLIB_POSTPROCESS) $O/$(TARGET)

submakedirs:  base_dir tests_dir examples_dir modules_dir

.PHONY: base tests examples modules
base: base_dir
tests: tests_dir
examples: examples_dir
modules: modules_dir

base_dir:
	cd base && $(MAKE)

tests_dir:
	cd tests && $(MAKE)

examples_dir:
	cd examples && $(MAKE)

modules_dir:
	cd modules && $(MAKE)

.SUFFIXES: .cc

$O/%.o: %.cc
	@$(MKPATH) $(dir $@)
	$(CXX) -c $(COPTS) -o $@ $<

%_m.cc %_m.h: %.msg
	$(MSGC) -s _m.cc $(MSGCOPTS) $?

msgheaders: $(MSGFILES:.msg=_m.h)
	cd base && $(MAKE) msgheaders
	cd tests && $(MAKE) msgheaders
	cd examples && $(MAKE) msgheaders
	cd modules && $(MAKE) msgheaders

clean:
	-rm -rf $O
	-rm -f mixim-sommer mixim-sommer.exe libmixim-sommer.so libmixim-sommer.a libmixim-sommer.dll libmixim-sommer.dylib
	-rm -f ./*_m.cc ./*_m.h

	-cd base && $(MAKE) clean
	-cd tests && $(MAKE) clean
	-cd examples && $(MAKE) clean
	-cd modules && $(MAKE) clean

cleanall: clean
	-rm -rf $(PROJECT_OUTPUT_DIR)

depend:
	$(MAKEDEPEND) $(INCLUDE_PATH) -f Makefile -P\$$O/ -- $(MSG_CC_FILES)  ./*.cc
	-cd base && if [ -f Makefile ]; then $(MAKE) depend; fi
	-cd tests && if [ -f Makefile ]; then $(MAKE) depend; fi
	-cd examples && if [ -f Makefile ]; then $(MAKE) depend; fi
	-cd modules && if [ -f Makefile ]; then $(MAKE) depend; fi

# DO NOT DELETE THIS LINE -- make depend depends on it.

