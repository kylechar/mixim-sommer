#
# OMNeT++/OMNEST Makefile for libmiximtestUtils
#
# This file was generated with the command:
#  opp_makemake -f --make-so -o miximtestUtils -O out -I../../base -I../../base/utils -I../../base/messages -I../../base/modules -I../../base/connectionManager -I../../base/phyLayer -L../../out/$(CONFIGNAME) -L../../out/$(CONFIGNAME)/base -L../../out/$(CONFIGNAME)/tests/power/utils -L../../out/$(CONFIGNAME)/modules
#

# Name of target to be created (-o option)
TARGET = libmiximtestUtils$(SHARED_LIB_SUFFIX)

# C++ include paths (with -I)
INCLUDE_PATH = \
    -I../../base \
    -I../../base/utils \
    -I../../base/messages \
    -I../../base/modules \
    -I../../base/connectionManager \
    -I../../base/phyLayer \
    -I.

# Additional object and library files to link with
EXTRA_OBJS =

# Additional libraries (-L, -l options)
LIBS = -L../../out/$(CONFIGNAME) -L../../out/$(CONFIGNAME)/base -L../../out/$(CONFIGNAME)/tests/power/utils -L../../out/$(CONFIGNAME)/modules
LIBS += -Wl,-rpath,`abspath ../../out/$(CONFIGNAME)` -Wl,-rpath,`abspath ../../out/$(CONFIGNAME)/base` -Wl,-rpath,`abspath ../../out/$(CONFIGNAME)/tests/power/utils` -Wl,-rpath,`abspath ../../out/$(CONFIGNAME)/modules`

# Output directory
PROJECT_OUTPUT_DIR = ../../out
PROJECTRELATIVE_PATH = tests/testUtils
O = $(PROJECT_OUTPUT_DIR)/$(CONFIGNAME)/$(PROJECTRELATIVE_PATH)

# Object files for local .cc and .msg files
OBJS = $O/asserts.o $O/OmnetTestBase.o $O/Testmanager.o $O/TestModule.o

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
# <<<
#------------------------------------------------------------------------------

# Main target
all: $(TARGET)

$(TARGET) : $O/$(TARGET)
	$(LN) $O/$(TARGET) .

$O/$(TARGET): $(OBJS)  $(wildcard $(EXTRA_OBJS)) Makefile
	@$(MKPATH) $O
	$(SHLIB_LD) -o $O/$(TARGET)  $(OBJS) $(EXTRA_OBJS) $(LIBS) $(OMNETPP_LIBS) $(LDFLAGS)
	$(SHLIB_POSTPROCESS) $O/$(TARGET)

.PHONY:

.SUFFIXES: .cc

$O/%.o: %.cc
	@$(MKPATH) $(dir $@)
	$(CXX) -c $(COPTS) -o $@ $<

%_m.cc %_m.h: %.msg
	$(MSGC) -s _m.cc $(MSGCOPTS) $?

msgheaders: $(MSGFILES:.msg=_m.h)

clean:
	-rm -rf $O
	-rm -f miximtestUtils miximtestUtils.exe libmiximtestUtils.so libmiximtestUtils.a libmiximtestUtils.dll libmiximtestUtils.dylib
	-rm -f ./*_m.cc ./*_m.h

cleanall: clean
	-rm -rf $(PROJECT_OUTPUT_DIR)

depend:
	$(MAKEDEPEND) $(INCLUDE_PATH) -f Makefile -P\$$O/ -- $(MSG_CC_FILES)  ./*.cc

# DO NOT DELETE THIS LINE -- make depend depends on it.
$O/Testmanager.o: Testmanager.cc \
	OmnetTestBase.h \
	TestManager.h \
	asserts.h
$O/asserts.o: asserts.cc \
	asserts.h
$O/OmnetTestBase.o: OmnetTestBase.cc \
	OmnetTestBase.h \
	asserts.h
$O/TestModule.o: TestModule.cc \
	TestManager.h \
	OmnetTestBase.h \
	TestModule.h \
	asserts.h \
	../../base/utils/FindModule.h

