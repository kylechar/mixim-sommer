#
# OMNeT++/OMNEST Makefile for nicTest
#
# This file was generated with the command:
#  opp_makemake -f -o nicTest -O out -u CMDENV -I../../modules/analogueModel -I../../modules/phy -I../../base/modules -I../../modules/mac -I../../base/connectionManager -I../../modules/obstacle -I../../modules/messages -I../../modules -I../../modules/utility -I../../base/utils -I../../base -I../../base/messages -I../../base/phyLayer -L../../out/$(CONFIGNAME) -L../../out/$(CONFIGNAME)/base -L../../out/$(CONFIGNAME)/tests/power/utils -L../../out/$(CONFIGNAME)/tests/testUtils -L../../out/$(CONFIGNAME)/modules -lmiximbase -lmiximmodules -lmiximtestUtils
#

# Name of target to be created (-o option)
TARGET = nicTest$(EXE_SUFFIX)

# User interface (uncomment one) (-u option)
#USERIF_LIBS = $(ALL_ENV_LIBS) # that is, $(TKENV_LIBS) $(CMDENV_LIBS)
USERIF_LIBS = $(CMDENV_LIBS)
#USERIF_LIBS = $(TKENV_LIBS)

# C++ include paths (with -I)
INCLUDE_PATH = \
    -I../../modules/analogueModel \
    -I../../modules/phy \
    -I../../base/modules \
    -I../../modules/mac \
    -I../../base/connectionManager \
    -I../../modules/obstacle \
    -I../../modules/messages \
    -I../../modules \
    -I../../modules/utility \
    -I../../base/utils \
    -I../../base \
    -I../../base/messages \
    -I../../base/phyLayer \
    -I.

# Additional object and library files to link with
EXTRA_OBJS =

# Additional libraries (-L, -l options)
LIBS = -L../../out/$(CONFIGNAME) -L../../out/$(CONFIGNAME)/base -L../../out/$(CONFIGNAME)/tests/power/utils -L../../out/$(CONFIGNAME)/tests/testUtils -L../../out/$(CONFIGNAME)/modules  -lmiximbase -lmiximmodules -lmiximtestUtils
LIBS += -Wl,-rpath,`abspath ../../out/$(CONFIGNAME)` -Wl,-rpath,`abspath ../../out/$(CONFIGNAME)/base` -Wl,-rpath,`abspath ../../out/$(CONFIGNAME)/tests/power/utils` -Wl,-rpath,`abspath ../../out/$(CONFIGNAME)/tests/testUtils` -Wl,-rpath,`abspath ../../out/$(CONFIGNAME)/modules`

# Output directory
PROJECT_OUTPUT_DIR = ../../out
PROJECTRELATIVE_PATH = tests/nicTest
O = $(PROJECT_OUTPUT_DIR)/$(CONFIGNAME)/$(PROJECTRELATIVE_PATH)

# Object files for local .cc and .msg files
OBJS = $O/NicTests.o $O/TestApp.o

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
OMNETPP_LIBS = -L"$(OMNETPP_LIB_SUBDIR)" -L"$(OMNETPP_LIB_DIR)" $(USERIF_LIBS) $(KERNEL_LIBS) $(SYS_LIBS)

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
	$(CXX) $(LDFLAGS) -o $O/$(TARGET)  $(OBJS) $(EXTRA_OBJS) $(WHOLE_ARCHIVE_ON) $(LIBS) $(WHOLE_ARCHIVE_OFF) $(OMNETPP_LIBS)

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
	-rm -f nicTest nicTest.exe libnicTest.so libnicTest.a libnicTest.dll libnicTest.dylib
	-rm -f ./*_m.cc ./*_m.h

cleanall: clean
	-rm -rf $(PROJECT_OUTPUT_DIR)

depend:
	$(MAKEDEPEND) $(INCLUDE_PATH) -f Makefile -P\$$O/ -- $(MSG_CC_FILES)  ./*.cc

# DO NOT DELETE THIS LINE -- make depend depends on it.
$O/TestApp.o: TestApp.cc \
	../../base/utils/FWMath.h \
	../../base/utils/HostState.h \
	../../base/phyLayer/MacToPhyInterface.h \
	../../base/messages/MacPkt_m.h \
	../../base/modules/BaseLayer.h \
	../../base/utils/Coord.h \
	../../base/modules/Blackboard.h \
	../../modules/utility/Consts80211.h \
	TestApp.h \
	../../base/phyLayer/MappingBase.h \
	../../base/phyLayer/MappingUtils.h \
	../../base/phyLayer/AnalogueModel.h \
	../../base/utils/FindModule.h \
	../../base/phyLayer/Mapping.h \
	../../base/phyLayer/Signal_.h \
	../../base/modules/BaseBattery.h \
	../../base/connectionManager/NicEntry.h \
	../../base/phyLayer/PhyUtils.h \
	../../base/connectionManager/BaseConnectionManager.h \
	../../base/phyLayer/ChannelState.h \
	../../base/modules/BaseUtility.h \
	../../base/utils/SimpleAddress.h \
	../../base/modules/BaseMacLayer.h \
	../../modules/messages/Mac80211Pkt_m.h \
	../../base/utils/NetwToMacControlInfo.h \
	../../base/modules/BatteryAccess.h \
	../../base/utils/ImNotifiable.h \
	../../base/utils/PassedMessage.h \
	../../base/messages/ChannelSenseRequest_m.h \
	../../base/utils/Move.h \
	../../modules/mac/Mac80211MultiChannel.h \
	../../base/phyLayer/Interpolation.h \
	../../base/modules/BaseModule.h \
	../../modules/mac/Mac80211.h
$O/NicTests.o: NicTests.cc \
	../../base/utils/FWMath.h \
	NicTests.h \
	../../base/utils/HostState.h \
	../../base/phyLayer/MacToPhyInterface.h \
	../../base/messages/MacPkt_m.h \
	../../base/modules/BaseLayer.h \
	../../base/utils/Coord.h \
	../../base/modules/Blackboard.h \
	../../modules/utility/Consts80211.h \
	TestApp.h \
	../../base/phyLayer/MappingBase.h \
	../../base/phyLayer/MappingUtils.h \
	../../base/phyLayer/AnalogueModel.h \
	../../base/utils/FindModule.h \
	../../base/phyLayer/Mapping.h \
	../../base/phyLayer/Signal_.h \
	../../base/modules/BaseBattery.h \
	../../base/connectionManager/NicEntry.h \
	../../base/phyLayer/PhyUtils.h \
	../../base/connectionManager/BaseConnectionManager.h \
	../../base/phyLayer/ChannelState.h \
	../../base/modules/BaseUtility.h \
	../../base/modules/BaseMacLayer.h \
	../../modules/messages/Mac80211Pkt_m.h \
	../../base/modules/BatteryAccess.h \
	../../base/utils/ImNotifiable.h \
	../../base/utils/PassedMessage.h \
	../../base/messages/ChannelSenseRequest_m.h \
	../../base/utils/Move.h \
	../../modules/mac/Mac80211MultiChannel.h \
	../../base/phyLayer/Interpolation.h \
	../../base/modules/BaseModule.h \
	../../modules/mac/Mac80211.h

