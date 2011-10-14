#
# OMNeT++/OMNEST Makefile for libmiximbase
#
# This file was generated with the command:
#  opp_makemake -f --deep --make-so -o miximbase -O out -L../out/$(CONFIGNAME) -L../out/$(CONFIGNAME)/tests/power/utils -L../out/$(CONFIGNAME)/tests/testUtils -L../out/$(CONFIGNAME)/modules
#

# Name of target to be created (-o option)
TARGET = libmiximbase$(SHARED_LIB_SUFFIX)

# C++ include paths (with -I)
INCLUDE_PATH = \
    -I. \
    -IconnectionManager \
    -Imessages \
    -Imodules \
    -IphyLayer \
    -Itimers \
    -Iutils

# Additional object and library files to link with
EXTRA_OBJS =

# Additional libraries (-L, -l options)
LIBS = -L../out/$(CONFIGNAME) -L../out/$(CONFIGNAME)/tests/power/utils -L../out/$(CONFIGNAME)/tests/testUtils -L../out/$(CONFIGNAME)/modules
LIBS += -Wl,-rpath,`abspath ../out/$(CONFIGNAME)` -Wl,-rpath,`abspath ../out/$(CONFIGNAME)/tests/power/utils` -Wl,-rpath,`abspath ../out/$(CONFIGNAME)/tests/testUtils` -Wl,-rpath,`abspath ../out/$(CONFIGNAME)/modules`

# Output directory
PROJECT_OUTPUT_DIR = ../out
PROJECTRELATIVE_PATH = base
O = $(PROJECT_OUTPUT_DIR)/$(CONFIGNAME)/$(PROJECTRELATIVE_PATH)

# Object files for local .cc and .msg files
OBJS = \
    $O/connectionManager/BaseConnectionManager.o \
    $O/connectionManager/ChannelAccess.o \
    $O/connectionManager/ConnectionManager.o \
    $O/connectionManager/NicEntryDebug.o \
    $O/connectionManager/NicEntryDirect.o \
    $O/modules/BaseApplLayer.o \
    $O/modules/BaseArp.o \
    $O/modules/BaseBattery.o \
    $O/modules/BaseLayer.o \
    $O/modules/BaseMacLayer.o \
    $O/modules/BaseMobility.o \
    $O/modules/BaseModule.o \
    $O/modules/BaseNetwLayer.o \
    $O/modules/BaseUtility.o \
    $O/modules/BaseWorldUtility.o \
    $O/modules/BatteryAccess.o \
    $O/modules/Blackboard.o \
    $O/modules/TestApplLayer.o \
    $O/phyLayer/BaseDecider.o \
    $O/phyLayer/BasePhyLayer.o \
    $O/phyLayer/ChannelInfo.o \
    $O/phyLayer/ChannelState.o \
    $O/phyLayer/Decider.o \
    $O/phyLayer/MappingBase.o \
    $O/phyLayer/MappingUtils.o \
    $O/phyLayer/PhyUtils.o \
    $O/phyLayer/Signal.o \
    $O/timers/FrameTimer.o \
    $O/timers/FrameTimerGenerator.o \
    $O/timers/GlobalTime.o \
    $O/timers/RepeatTimer.o \
    $O/timers/RepeatTimerCore.o \
    $O/timers/Timer.o \
    $O/timers/TimerCore.o \
    $O/utils/Coord.o \
    $O/utils/InlineXmlDoc.o \
    $O/utils/winsupport.o \
    $O/messages/AirFrame_m.o \
    $O/messages/ApplPkt_m.o \
    $O/messages/BorderMsg_m.o \
    $O/messages/ChannelSenseRequest_m.o \
    $O/messages/MacPkt_m.o \
    $O/messages/NetwPkt_m.o

# Message files
MSGFILES = \
    messages/AirFrame.msg \
    messages/ApplPkt.msg \
    messages/BorderMsg.msg \
    messages/ChannelSenseRequest.msg \
    messages/MacPkt.msg \
    messages/NetwPkt.msg

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
	-rm -f miximbase miximbase.exe libmiximbase.so libmiximbase.a libmiximbase.dll libmiximbase.dylib
	-rm -f ./*_m.cc ./*_m.h
	-rm -f connectionManager/*_m.cc connectionManager/*_m.h
	-rm -f messages/*_m.cc messages/*_m.h
	-rm -f modules/*_m.cc modules/*_m.h
	-rm -f phyLayer/*_m.cc phyLayer/*_m.h
	-rm -f timers/*_m.cc timers/*_m.h
	-rm -f utils/*_m.cc utils/*_m.h

cleanall: clean
	-rm -rf $(PROJECT_OUTPUT_DIR)

depend:
	$(MAKEDEPEND) $(INCLUDE_PATH) -f Makefile -P\$$O/ -- $(MSG_CC_FILES)  ./*.cc connectionManager/*.cc messages/*.cc modules/*.cc phyLayer/*.cc timers/*.cc utils/*.cc

# DO NOT DELETE THIS LINE -- make depend depends on it.
$O/connectionManager/ChannelAccess.o: connectionManager/ChannelAccess.cc \
	modules/BaseBattery.h \
	connectionManager/NicEntry.h \
	utils/FWMath.h \
	messages/AirFrame_m.h \
	modules/BaseWorldUtility.h \
	utils/HostState.h \
	connectionManager/BaseConnectionManager.h \
	modules/BaseUtility.h \
	utils/Coord.h \
	utils/ImNotifiable.h \
	modules/BatteryAccess.h \
	modules/Blackboard.h \
	utils/Move.h \
	phyLayer/MappingBase.h \
	phyLayer/MappingUtils.h \
	phyLayer/Interpolation.h \
	modules/BaseModule.h \
	phyLayer/Mapping.h \
	utils/FindModule.h \
	phyLayer/Signal_.h \
	connectionManager/ChannelAccess.h
$O/connectionManager/BaseConnectionManager.o: connectionManager/BaseConnectionManager.cc \
	connectionManager/NicEntry.h \
	utils/Coord.h \
	utils/FWMath.h \
	utils/ImNotifiable.h \
	modules/BaseWorldUtility.h \
	modules/Blackboard.h \
	connectionManager/BaseConnectionManager.h \
	connectionManager/NicEntryDirect.h \
	utils/FindModule.h \
	connectionManager/NicEntryDebug.h
$O/connectionManager/NicEntryDebug.o: connectionManager/NicEntryDebug.cc \
	modules/BaseBattery.h \
	connectionManager/NicEntry.h \
	utils/FWMath.h \
	messages/AirFrame_m.h \
	modules/BaseWorldUtility.h \
	utils/HostState.h \
	connectionManager/BaseConnectionManager.h \
	connectionManager/NicEntryDebug.h \
	modules/BaseUtility.h \
	utils/Coord.h \
	modules/BatteryAccess.h \
	utils/ImNotifiable.h \
	modules/Blackboard.h \
	utils/Move.h \
	phyLayer/MappingBase.h \
	phyLayer/MappingUtils.h \
	phyLayer/Interpolation.h \
	modules/BaseModule.h \
	phyLayer/Mapping.h \
	utils/FindModule.h \
	phyLayer/Signal_.h \
	connectionManager/ChannelAccess.h
$O/connectionManager/ConnectionManager.o: connectionManager/ConnectionManager.cc \
	connectionManager/NicEntry.h \
	utils/Coord.h \
	utils/FWMath.h \
	utils/ImNotifiable.h \
	modules/BaseWorldUtility.h \
	modules/Blackboard.h \
	connectionManager/ConnectionManager.h \
	connectionManager/BaseConnectionManager.h
$O/connectionManager/NicEntryDirect.o: connectionManager/NicEntryDirect.cc \
	modules/BaseBattery.h \
	utils/FWMath.h \
	connectionManager/NicEntry.h \
	messages/AirFrame_m.h \
	modules/BaseWorldUtility.h \
	utils/HostState.h \
	connectionManager/BaseConnectionManager.h \
	modules/BaseUtility.h \
	utils/Coord.h \
	modules/BatteryAccess.h \
	utils/ImNotifiable.h \
	modules/Blackboard.h \
	utils/Move.h \
	phyLayer/MappingBase.h \
	phyLayer/MappingUtils.h \
	phyLayer/Interpolation.h \
	modules/BaseModule.h \
	connectionManager/NicEntryDirect.h \
	phyLayer/Mapping.h \
	utils/FindModule.h \
	phyLayer/Signal_.h \
	connectionManager/ChannelAccess.h
$O/messages/NetwPkt_m.o: messages/NetwPkt_m.cc \
	messages/NetwPkt_m.h
$O/messages/ApplPkt_m.o: messages/ApplPkt_m.cc \
	messages/ApplPkt_m.h
$O/messages/ChannelSenseRequest_m.o: messages/ChannelSenseRequest_m.cc \
	messages/ChannelSenseRequest_m.h \
	phyLayer/ChannelState.h
$O/messages/BorderMsg_m.o: messages/BorderMsg_m.cc \
	utils/Coord.h \
	utils/FWMath.h \
	messages/BorderMsg_m.h
$O/messages/AirFrame_m.o: messages/AirFrame_m.cc \
	utils/FWMath.h \
	messages/AirFrame_m.h \
	utils/HostState.h \
	modules/BaseUtility.h \
	utils/Coord.h \
	utils/ImNotifiable.h \
	modules/Blackboard.h \
	utils/Move.h \
	phyLayer/MappingBase.h \
	phyLayer/Interpolation.h \
	phyLayer/MappingUtils.h \
	phyLayer/Mapping.h \
	phyLayer/Signal_.h
$O/messages/MacPkt_m.o: messages/MacPkt_m.cc \
	messages/MacPkt_m.h
$O/modules/BatteryAccess.o: modules/BatteryAccess.cc \
	modules/BaseBattery.h \
	utils/Coord.h \
	utils/FWMath.h \
	utils/ImNotifiable.h \
	modules/BatteryAccess.h \
	modules/Blackboard.h \
	utils/HostState.h \
	modules/BaseModule.h \
	utils/FindModule.h \
	modules/BaseUtility.h
$O/modules/BaseNetwLayer.o: modules/BaseNetwLayer.cc \
	utils/FWMath.h \
	utils/HostState.h \
	utils/NetwControlInfo.h \
	phyLayer/MacToPhyInterface.h \
	messages/MacPkt_m.h \
	modules/BaseLayer.h \
	utils/Coord.h \
	modules/Blackboard.h \
	modules/BaseNetwLayer.h \
	phyLayer/MappingBase.h \
	phyLayer/MappingUtils.h \
	phyLayer/AnalogueModel.h \
	utils/FindModule.h \
	phyLayer/Mapping.h \
	phyLayer/Signal_.h \
	modules/BaseBattery.h \
	connectionManager/NicEntry.h \
	phyLayer/PhyUtils.h \
	connectionManager/BaseConnectionManager.h \
	phyLayer/ChannelState.h \
	modules/ArpInterface.h \
	modules/BaseUtility.h \
	utils/SimpleAddress.h \
	modules/BaseMacLayer.h \
	messages/NetwPkt_m.h \
	utils/NetwToMacControlInfo.h \
	utils/ImNotifiable.h \
	modules/BatteryAccess.h \
	utils/PassedMessage.h \
	utils/Move.h \
	modules/BaseModule.h \
	phyLayer/Interpolation.h \
	modules/AddressingInterface.h
$O/modules/BaseModule.o: modules/BaseModule.cc \
	utils/FWMath.h \
	utils/Coord.h \
	utils/ImNotifiable.h \
	utils/HostState.h \
	modules/Blackboard.h \
	modules/BaseModule.h \
	utils/FindModule.h \
	modules/BaseUtility.h
$O/modules/BaseMacLayer.o: modules/BaseMacLayer.cc \
	utils/FWMath.h \
	messages/AirFrame_m.h \
	utils/HostState.h \
	phyLayer/MacToPhyInterface.h \
	messages/MacPkt_m.h \
	modules/BaseLayer.h \
	utils/Coord.h \
	modules/Blackboard.h \
	phyLayer/MappingBase.h \
	phyLayer/AnalogueModel.h \
	phyLayer/MappingUtils.h \
	utils/FindModule.h \
	phyLayer/Mapping.h \
	phyLayer/Signal_.h \
	modules/BaseBattery.h \
	connectionManager/NicEntry.h \
	modules/BaseWorldUtility.h \
	phyLayer/PhyUtils.h \
	connectionManager/BaseConnectionManager.h \
	phyLayer/ChannelState.h \
	modules/BaseUtility.h \
	utils/SimpleAddress.h \
	utils/MacToNetwControlInfo.h \
	modules/BaseMacLayer.h \
	utils/NetwToMacControlInfo.h \
	modules/BatteryAccess.h \
	utils/ImNotifiable.h \
	utils/PassedMessage.h \
	utils/Move.h \
	modules/BaseModule.h \
	phyLayer/Interpolation.h \
	connectionManager/ChannelAccess.h \
	modules/AddressingInterface.h
$O/modules/BaseApplLayer.o: modules/BaseApplLayer.cc \
	modules/BaseBattery.h \
	utils/FWMath.h \
	utils/HostState.h \
	modules/BaseUtility.h \
	modules/BaseLayer.h \
	modules/BaseApplLayer.h \
	utils/Coord.h \
	modules/BatteryAccess.h \
	utils/ImNotifiable.h \
	modules/Blackboard.h \
	utils/PassedMessage.h \
	messages/ApplPkt_m.h \
	modules/BaseModule.h \
	utils/FindModule.h
$O/modules/BaseLayer.o: modules/BaseLayer.cc \
	modules/BaseBattery.h \
	modules/BaseLayer.h \
	utils/Coord.h \
	utils/FWMath.h \
	utils/ImNotifiable.h \
	modules/BatteryAccess.h \
	modules/Blackboard.h \
	utils/HostState.h \
	utils/PassedMessage.h \
	modules/BaseModule.h \
	utils/FindModule.h \
	modules/BaseUtility.h
$O/modules/TestApplLayer.o: modules/TestApplLayer.cc \
	modules/BaseBattery.h \
	utils/FWMath.h \
	utils/NetwControlInfo.h \
	utils/HostState.h \
	modules/BaseUtility.h \
	utils/SimpleAddress.h \
	modules/TestApplLayer.h \
	modules/BaseLayer.h \
	modules/BaseApplLayer.h \
	utils/Coord.h \
	utils/ImNotifiable.h \
	modules/BatteryAccess.h \
	modules/Blackboard.h \
	utils/PassedMessage.h \
	modules/BaseModule.h \
	messages/ApplPkt_m.h \
	utils/FindModule.h
$O/modules/BaseArp.o: modules/BaseArp.cc \
	utils/FWMath.h \
	utils/Coord.h \
	utils/ImNotifiable.h \
	modules/Blackboard.h \
	utils/HostState.h \
	modules/BaseModule.h \
	utils/FindModule.h \
	modules/BaseArp.h \
	modules/ArpInterface.h \
	modules/BaseUtility.h \
	modules/AddressingInterface.h
$O/modules/BaseMobility.o: modules/BaseMobility.cc \
	modules/BaseBattery.h \
	utils/FWMath.h \
	messages/BorderMsg_m.h \
	modules/BaseWorldUtility.h \
	utils/HostState.h \
	modules/BaseMobility.h \
	modules/BaseUtility.h \
	utils/Coord.h \
	modules/BatteryAccess.h \
	utils/ImNotifiable.h \
	modules/Blackboard.h \
	utils/Move.h \
	modules/BaseModule.h \
	utils/FindModule.h
$O/modules/BaseWorldUtility.o: modules/BaseWorldUtility.cc \
	connectionManager/NicEntry.h \
	utils/Coord.h \
	utils/FWMath.h \
	utils/ImNotifiable.h \
	modules/BaseWorldUtility.h \
	modules/Blackboard.h \
	connectionManager/BaseConnectionManager.h \
	utils/FindModule.h
$O/modules/BaseUtility.o: modules/BaseUtility.cc \
	modules/BaseBattery.h \
	utils/FWMath.h \
	modules/BaseWorldUtility.h \
	utils/HostState.h \
	modules/BaseMobility.h \
	modules/BaseUtility.h \
	utils/Coord.h \
	utils/ImNotifiable.h \
	modules/BatteryAccess.h \
	modules/Blackboard.h \
	utils/Move.h \
	modules/BaseModule.h \
	utils/FindModule.h
$O/modules/Blackboard.o: modules/Blackboard.cc \
	utils/ImNotifiable.h \
	modules/Blackboard.h
$O/modules/BaseBattery.o: modules/BaseBattery.cc \
	modules/BaseBattery.h \
	utils/FWMath.h \
	utils/Coord.h \
	utils/ImNotifiable.h \
	modules/Blackboard.h \
	utils/HostState.h \
	modules/BaseModule.h \
	utils/FindModule.h \
	modules/BaseUtility.h
$O/phyLayer/Decider.o: phyLayer/Decider.cc \
	phyLayer/Decider.h \
	utils/FWMath.h \
	messages/AirFrame_m.h \
	modules/BaseWorldUtility.h \
	utils/HostState.h \
	phyLayer/ChannelState.h \
	modules/BaseUtility.h \
	utils/Coord.h \
	utils/ImNotifiable.h \
	modules/Blackboard.h \
	messages/ChannelSenseRequest_m.h \
	utils/Move.h \
	phyLayer/MappingBase.h \
	phyLayer/Interpolation.h \
	phyLayer/MappingUtils.h \
	phyLayer/Mapping.h \
	phyLayer/Signal_.h \
	phyLayer/DeciderToPhyInterface.h
$O/phyLayer/ChannelInfo.o: phyLayer/ChannelInfo.cc \
	utils/FWMath.h \
	messages/AirFrame_m.h \
	utils/HostState.h \
	modules/BaseUtility.h \
	utils/Coord.h \
	phyLayer/ChannelInfo.h \
	utils/ImNotifiable.h \
	modules/Blackboard.h \
	utils/Move.h \
	phyLayer/MappingBase.h \
	phyLayer/Interpolation.h \
	phyLayer/MappingUtils.h \
	phyLayer/Mapping.h \
	phyLayer/Signal_.h
$O/phyLayer/PhyUtils.o: phyLayer/PhyUtils.cc \
	utils/FWMath.h \
	utils/HostState.h \
	phyLayer/PhyUtils.h \
	modules/BaseUtility.h \
	utils/Coord.h \
	utils/ImNotifiable.h \
	modules/Blackboard.h \
	utils/Move.h \
	phyLayer/MappingBase.h \
	phyLayer/AnalogueModel.h \
	phyLayer/MappingUtils.h \
	phyLayer/Interpolation.h \
	phyLayer/Mapping.h \
	phyLayer/Signal_.h
$O/phyLayer/MappingBase.o: phyLayer/MappingBase.cc \
	utils/FWMath.h \
	phyLayer/MappingBase.h \
	phyLayer/Interpolation.h
$O/phyLayer/BasePhyLayer.o: phyLayer/BasePhyLayer.cc \
	utils/FWMath.h \
	messages/AirFrame_m.h \
	utils/HostState.h \
	messages/MacPkt_m.h \
	phyLayer/MacToPhyInterface.h \
	utils/Coord.h \
	phyLayer/ChannelInfo.h \
	modules/Blackboard.h \
	phyLayer/MappingBase.h \
	phyLayer/AnalogueModel.h \
	phyLayer/MappingUtils.h \
	utils/FindModule.h \
	phyLayer/Mapping.h \
	phyLayer/PhyToMacControlInfo.h \
	phyLayer/Signal_.h \
	phyLayer/DeciderToPhyInterface.h \
	phyLayer/Decider.h \
	modules/BaseBattery.h \
	phyLayer/MacToPhyControlInfo.h \
	connectionManager/NicEntry.h \
	modules/BaseWorldUtility.h \
	phyLayer/PhyUtils.h \
	connectionManager/BaseConnectionManager.h \
	phyLayer/ChannelState.h \
	modules/BaseUtility.h \
	modules/BatteryAccess.h \
	utils/ImNotifiable.h \
	messages/ChannelSenseRequest_m.h \
	utils/Move.h \
	modules/BaseModule.h \
	phyLayer/Interpolation.h \
	phyLayer/BasePhyLayer.h \
	connectionManager/ChannelAccess.h
$O/phyLayer/MappingUtils.o: phyLayer/MappingUtils.cc \
	utils/FWMath.h \
	phyLayer/MappingBase.h \
	phyLayer/Interpolation.h \
	phyLayer/MappingUtils.h
$O/phyLayer/BaseDecider.o: phyLayer/BaseDecider.cc \
	phyLayer/Decider.h \
	utils/FWMath.h \
	messages/AirFrame_m.h \
	modules/BaseWorldUtility.h \
	utils/HostState.h \
	phyLayer/ChannelState.h \
	modules/BaseUtility.h \
	utils/Coord.h \
	utils/ImNotifiable.h \
	modules/Blackboard.h \
	messages/ChannelSenseRequest_m.h \
	utils/Move.h \
	phyLayer/MappingBase.h \
	phyLayer/Interpolation.h \
	phyLayer/MappingUtils.h \
	phyLayer/BaseDecider.h \
	phyLayer/Mapping.h \
	phyLayer/Signal_.h \
	phyLayer/DeciderToPhyInterface.h
$O/phyLayer/Signal.o: phyLayer/Signal.cc \
	utils/FWMath.h \
	utils/Coord.h \
	utils/ImNotifiable.h \
	modules/Blackboard.h \
	utils/HostState.h \
	utils/Move.h \
	phyLayer/MappingBase.h \
	phyLayer/Interpolation.h \
	phyLayer/MappingUtils.h \
	phyLayer/Mapping.h \
	modules/BaseUtility.h \
	phyLayer/Signal_.h
$O/phyLayer/ChannelState.o: phyLayer/ChannelState.cc \
	phyLayer/ChannelState.h
$O/timers/FrameTimer.o: timers/FrameTimer.cc \
	timers/FrameTimerGenerator.h \
	timers/FrameTimer.h \
	utils/Coord.h \
	utils/FWMath.h \
	timers/GlobalTime.h \
	utils/ImNotifiable.h \
	modules/Blackboard.h \
	utils/HostState.h \
	modules/BaseModule.h \
	utils/FindModule.h \
	modules/BaseUtility.h
$O/timers/FrameTimerGenerator.o: timers/FrameTimerGenerator.cc \
	timers/FrameTimerGenerator.h \
	timers/FrameTimer.h \
	utils/Coord.h \
	utils/FWMath.h \
	utils/ImNotifiable.h \
	timers/GlobalTime.h \
	modules/Blackboard.h \
	utils/HostState.h \
	modules/BaseModule.h \
	utils/FindModule.h \
	modules/BaseUtility.h
$O/timers/GlobalTime.o: timers/GlobalTime.cc \
	timers/GlobalTime.h
$O/timers/Timer.o: timers/Timer.cc \
	utils/Coord.h \
	utils/FWMath.h \
	utils/ImNotifiable.h \
	modules/Blackboard.h \
	utils/HostState.h \
	modules/BaseModule.h \
	utils/FindModule.h \
	timers/Timer.h \
	modules/BaseUtility.h \
	timers/TimerCore.h
$O/timers/RepeatTimer.o: timers/RepeatTimer.cc \
	timers/RepeatTimer.h \
	utils/FWMath.h \
	utils/Coord.h \
	utils/ImNotifiable.h \
	modules/Blackboard.h \
	utils/HostState.h \
	modules/BaseModule.h \
	utils/FindModule.h \
	modules/BaseUtility.h \
	timers/RepeatTimerCore.h
$O/timers/TimerCore.o: timers/TimerCore.cc \
	utils/Coord.h \
	utils/FWMath.h \
	utils/ImNotifiable.h \
	modules/Blackboard.h \
	utils/HostState.h \
	modules/BaseModule.h \
	utils/FindModule.h \
	timers/Timer.h \
	modules/BaseUtility.h \
	timers/TimerCore.h
$O/timers/RepeatTimerCore.o: timers/RepeatTimerCore.cc \
	timers/RepeatTimer.h \
	utils/FWMath.h \
	utils/Coord.h \
	utils/ImNotifiable.h \
	modules/Blackboard.h \
	utils/HostState.h \
	modules/BaseModule.h \
	utils/FindModule.h \
	modules/BaseUtility.h \
	timers/RepeatTimerCore.h
$O/utils/Coord.o: utils/Coord.cc \
	utils/FWMath.h \
	utils/Coord.h
$O/utils/InlineXmlDoc.o: utils/InlineXmlDoc.cc \
	utils/InlineXmlDoc.h
$O/utils/winsupport.o: utils/winsupport.cc \
	utils/winsupport.h

