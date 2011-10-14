#
# OMNeT++/OMNEST Makefile for basePhyLayer
#
# This file was generated with the command:
#  opp_makemake -f -o basePhyLayer -O out -u CMDENV -I../../base/utils -I../../base -I../../base/messages -I../../base/modules -I../../base/connectionManager -I../../base/phyLayer -I../testUtils -L../../out/$(CONFIGNAME) -L../../out/$(CONFIGNAME)/base -L../../out/$(CONFIGNAME)/tests/power/utils -L../../out/$(CONFIGNAME)/tests/testUtils -L../../out/$(CONFIGNAME)/modules -lmiximbase -lmiximmodules -lmiximtestUtils
#

# Name of target to be created (-o option)
TARGET = basePhyLayer$(EXE_SUFFIX)

# User interface (uncomment one) (-u option)
#USERIF_LIBS = $(ALL_ENV_LIBS) # that is, $(TKENV_LIBS) $(CMDENV_LIBS)
USERIF_LIBS = $(CMDENV_LIBS)
#USERIF_LIBS = $(TKENV_LIBS)

# C++ include paths (with -I)
INCLUDE_PATH = \
    -I../../base/utils \
    -I../../base \
    -I../../base/messages \
    -I../../base/modules \
    -I../../base/connectionManager \
    -I../../base/phyLayer \
    -I../testUtils \
    -I.

# Additional object and library files to link with
EXTRA_OBJS =

# Additional libraries (-L, -l options)
LIBS = -L../../out/$(CONFIGNAME) -L../../out/$(CONFIGNAME)/base -L../../out/$(CONFIGNAME)/tests/power/utils -L../../out/$(CONFIGNAME)/tests/testUtils -L../../out/$(CONFIGNAME)/modules  -lmiximbase -lmiximmodules -lmiximtestUtils
LIBS += -Wl,-rpath,`abspath ../../out/$(CONFIGNAME)` -Wl,-rpath,`abspath ../../out/$(CONFIGNAME)/base` -Wl,-rpath,`abspath ../../out/$(CONFIGNAME)/tests/power/utils` -Wl,-rpath,`abspath ../../out/$(CONFIGNAME)/tests/testUtils` -Wl,-rpath,`abspath ../../out/$(CONFIGNAME)/modules`

# Output directory
PROJECT_OUTPUT_DIR = ../../out
PROJECTRELATIVE_PATH = tests/basePhyLayer
O = $(PROJECT_OUTPUT_DIR)/$(CONFIGNAME)/$(PROJECTRELATIVE_PATH)

# Object files for local .cc and .msg files
OBJS = $O/BasePhyTests.o $O/TestMacLayer.o $O/TestPhyLayer.o

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
	-rm -f basePhyLayer basePhyLayer.exe libbasePhyLayer.so libbasePhyLayer.a libbasePhyLayer.dll libbasePhyLayer.dylib
	-rm -f ./*_m.cc ./*_m.h

cleanall: clean
	-rm -rf $(PROJECT_OUTPUT_DIR)

depend:
	$(MAKEDEPEND) $(INCLUDE_PATH) -f Makefile -P\$$O/ -- $(MSG_CC_FILES)  ./*.cc

# DO NOT DELETE THIS LINE -- make depend depends on it.
$O/TestPhyLayer.o: TestPhyLayer.cc \
	../testUtils/TestManager.h \
	../../base/utils/FWMath.h \
	../../base/messages/AirFrame_m.h \
	../../base/utils/HostState.h \
	../../base/phyLayer/MacToPhyInterface.h \
	../../base/messages/MacPkt_m.h \
	TestGlobals.h \
	../../base/utils/Coord.h \
	../../base/phyLayer/ChannelInfo.h \
	../../base/modules/Blackboard.h \
	../../base/phyLayer/MappingBase.h \
	TestPhyLayer.h \
	../../base/phyLayer/AnalogueModel.h \
	../../base/phyLayer/MappingUtils.h \
	../../base/utils/FindModule.h \
	../../base/phyLayer/Mapping.h \
	../../base/phyLayer/Signal_.h \
	../../base/phyLayer/DeciderToPhyInterface.h \
	../../base/phyLayer/Decider.h \
	../testUtils/OmnetTestBase.h \
	../testUtils/TestModule.h \
	../../base/modules/BaseBattery.h \
	../../base/connectionManager/NicEntry.h \
	../../base/modules/BaseWorldUtility.h \
	../../base/phyLayer/PhyUtils.h \
	../../base/phyLayer/ChannelState.h \
	../../base/connectionManager/BaseConnectionManager.h \
	../../base/modules/BaseUtility.h \
	../../base/utils/ImNotifiable.h \
	../../base/modules/BatteryAccess.h \
	../testUtils/asserts.h \
	../../base/messages/ChannelSenseRequest_m.h \
	../../base/utils/Move.h \
	../../base/modules/BaseModule.h \
	../../base/phyLayer/Interpolation.h \
	TestDecider.h \
	../../base/phyLayer/BasePhyLayer.h \
	../../base/connectionManager/ChannelAccess.h
$O/BasePhyTests.o: BasePhyTests.cc \
	../testUtils/TestManager.h \
	../../base/utils/FWMath.h \
	../../base/messages/AirFrame_m.h \
	../../base/utils/HostState.h \
	../../base/phyLayer/MacToPhyInterface.h \
	../../base/messages/MacPkt_m.h \
	../../base/utils/Coord.h \
	TestGlobals.h \
	../../base/phyLayer/ChannelInfo.h \
	../../base/modules/Blackboard.h \
	../../base/phyLayer/MappingBase.h \
	TestPhyLayer.h \
	../../base/phyLayer/AnalogueModel.h \
	../../base/phyLayer/MappingUtils.h \
	../../base/utils/FindModule.h \
	../../base/phyLayer/Mapping.h \
	../../base/phyLayer/Signal_.h \
	TestMacLayer.h \
	../../base/phyLayer/DeciderToPhyInterface.h \
	../../base/phyLayer/Decider.h \
	../testUtils/OmnetTestBase.h \
	../testUtils/TestModule.h \
	../../base/modules/BaseBattery.h \
	../../base/phyLayer/MacToPhyControlInfo.h \
	../../base/connectionManager/NicEntry.h \
	../../base/modules/BaseWorldUtility.h \
	../../base/phyLayer/PhyUtils.h \
	../../base/phyLayer/ChannelState.h \
	../../base/connectionManager/BaseConnectionManager.h \
	../../base/modules/BaseUtility.h \
	BasePhyTests.h \
	../../base/modules/BatteryAccess.h \
	../../base/utils/ImNotifiable.h \
	../testUtils/asserts.h \
	../../base/messages/ChannelSenseRequest_m.h \
	../../base/utils/Move.h \
	../../base/modules/BaseModule.h \
	../../base/phyLayer/Interpolation.h \
	TestDecider.h \
	../../base/phyLayer/BasePhyLayer.h \
	../../base/connectionManager/ChannelAccess.h
$O/TestMacLayer.o: TestMacLayer.cc \
	../testUtils/TestManager.h \
	../../base/utils/FWMath.h \
	../../base/messages/AirFrame_m.h \
	../../base/utils/HostState.h \
	../../base/messages/MacPkt_m.h \
	../../base/phyLayer/MacToPhyInterface.h \
	../../base/utils/Coord.h \
	TestGlobals.h \
	../../base/phyLayer/ChannelInfo.h \
	../../base/modules/Blackboard.h \
	../../base/phyLayer/MappingBase.h \
	TestPhyLayer.h \
	../../base/phyLayer/MappingUtils.h \
	../../base/phyLayer/AnalogueModel.h \
	../../base/utils/FindModule.h \
	../../base/phyLayer/Mapping.h \
	../../base/phyLayer/Signal_.h \
	TestMacLayer.h \
	../../base/phyLayer/DeciderToPhyInterface.h \
	../../base/phyLayer/Decider.h \
	../testUtils/TestModule.h \
	../testUtils/OmnetTestBase.h \
	../../base/modules/BaseBattery.h \
	../../base/phyLayer/MacToPhyControlInfo.h \
	../../base/connectionManager/NicEntry.h \
	../../base/modules/BaseWorldUtility.h \
	../../base/phyLayer/PhyUtils.h \
	../../base/connectionManager/BaseConnectionManager.h \
	../../base/phyLayer/ChannelState.h \
	../../base/modules/BaseUtility.h \
	../../base/modules/BatteryAccess.h \
	../../base/utils/ImNotifiable.h \
	../testUtils/asserts.h \
	../../base/messages/ChannelSenseRequest_m.h \
	../../base/utils/Move.h \
	../../base/modules/BaseModule.h \
	../../base/phyLayer/Interpolation.h \
	TestDecider.h \
	../../base/phyLayer/BasePhyLayer.h \
	../../base/connectionManager/ChannelAccess.h

