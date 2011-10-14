#
# OMNeT++/OMNEST Makefile for libmiximmodules
#
# This file was generated with the command:
#  opp_makemake -f --deep --make-so -o miximmodules -O out -I../base -I../base/utils -I../base/messages -I../base/modules -I../base/connectionManager -I../base/phyLayer -L../out/$(CONFIGNAME) -L../out/$(CONFIGNAME)/base -L../out/$(CONFIGNAME)/tests/power/utils -L../out/$(CONFIGNAME)/tests/testUtils -lmiximbase
#

# Name of target to be created (-o option)
TARGET = libmiximmodules$(SHARED_LIB_SUFFIX)

# C++ include paths (with -I)
INCLUDE_PATH = \
    -I../base \
    -I../base/utils \
    -I../base/messages \
    -I../base/modules \
    -I../base/connectionManager \
    -I../base/phyLayer \
    -I. \
    -IanalogueModel \
    -Iapplication \
    -IconnectionManager \
    -Imac \
    -Imessages \
    -Imobility \
    -Imobility/traci \
    -Inetw \
    -Inic \
    -Inode \
    -Iobstacle \
    -Iphy \
    -Ipower \
    -Ipower/battery \
    -Itransport \
    -Iutility

# Additional object and library files to link with
EXTRA_OBJS =

# Additional libraries (-L, -l options)
LIBS = -L../out/$(CONFIGNAME) -L../out/$(CONFIGNAME)/base -L../out/$(CONFIGNAME)/tests/power/utils -L../out/$(CONFIGNAME)/tests/testUtils  -lmiximbase
LIBS += -Wl,-rpath,`abspath ../out/$(CONFIGNAME)` -Wl,-rpath,`abspath ../out/$(CONFIGNAME)/base` -Wl,-rpath,`abspath ../out/$(CONFIGNAME)/tests/power/utils` -Wl,-rpath,`abspath ../out/$(CONFIGNAME)/tests/testUtils`

# Output directory
PROJECT_OUTPUT_DIR = ../out
PROJECTRELATIVE_PATH = modules
O = $(PROJECT_OUTPUT_DIR)/$(CONFIGNAME)/$(PROJECTRELATIVE_PATH)

# Object files for local .cc and .msg files
OBJS = \
    $O/analogueModel/JakesFading.o \
    $O/analogueModel/LogNormalShadowing.o \
    $O/analogueModel/SimpleObstacleShadowing.o \
    $O/analogueModel/SimplePathlossModel.o \
    $O/analogueModel/UWBIRIEEE802154APathlossModel.o \
    $O/analogueModel/UWBIRStochasticPathlossModel.o \
    $O/application/BurstApplLayer.o \
    $O/application/BurstApplLayerBattery.o \
    $O/application/SensorApplLayer.o \
    $O/application/TestApplication.o \
    $O/application/TrafficGen.o \
    $O/connectionManager/UnitDisk.o \
    $O/mac/AlohaMacLayer.o \
    $O/mac/csma.o \
    $O/mac/CSMA802154.o \
    $O/mac/CSMAMacLayer.o \
    $O/mac/Mac80211.o \
    $O/mac/Mac80211MultiChannel.o \
    $O/mac/UWBIRMac.o \
    $O/messages/AggrPkt.o \
    $O/messages/UWBIRMacPkt.o \
    $O/mobility/ANSimMobility.o \
    $O/mobility/BonnMotionFileCache.o \
    $O/mobility/BonnMotionMobility.o \
    $O/mobility/CircleMobility.o \
    $O/mobility/ConstSpeedMobility.o \
    $O/mobility/LinearMobility.o \
    $O/mobility/LineSegmentsMobilityBase.o \
    $O/mobility/MassMobility.o \
    $O/mobility/RectangleMobility.o \
    $O/mobility/TractorMobility.o \
    $O/mobility/TurtleMobility.o \
    $O/mobility/traci/TraCIMobility.o \
    $O/mobility/traci/TraCIScenarioManager.o \
    $O/mobility/traci/TraCIScenarioManagerLaunchd.o \
    $O/netw/ArpHost.o \
    $O/netw/DummyRoute.o \
    $O/obstacle/Obstacle.o \
    $O/obstacle/ObstacleControl.o \
    $O/obstacle/ObstacleDummy.o \
    $O/phy/Decider80211.o \
    $O/phy/Decider80211Battery.o \
    $O/phy/Decider80211MultiChannel.o \
    $O/phy/Decider802154Narrow.o \
    $O/phy/DeciderUWBIRED.o \
    $O/phy/DeciderUWBIREDSync.o \
    $O/phy/DeciderUWBIREDSyncOnAddress.o \
    $O/phy/PhyLayer.o \
    $O/phy/PhyLayerBattery.o \
    $O/phy/PhyLayerUWBIR.o \
    $O/phy/SNRThresholdDecider.o \
    $O/power/battery/BatteryStats.o \
    $O/power/battery/SimpleBattery.o \
    $O/transport/Aggregation.o \
    $O/utility/IEEE802154A.o \
    $O/utility/phyPER.o \
    $O/utility/SimTracer.o \
    $O/messages/AggrPkt_m.o \
    $O/messages/AirFrameUWBIR_m.o \
    $O/messages/DummyRoutePkt_m.o \
    $O/messages/Mac80211Pkt_m.o \
    $O/messages/UWBIRMacPkt_m.o

# Message files
MSGFILES = \
    messages/AggrPkt.msg \
    messages/AirFrameUWBIR.msg \
    messages/DummyRoutePkt.msg \
    messages/Mac80211Pkt.msg \
    messages/UWBIRMacPkt.msg

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
	-rm -f miximmodules miximmodules.exe libmiximmodules.so libmiximmodules.a libmiximmodules.dll libmiximmodules.dylib
	-rm -f ./*_m.cc ./*_m.h
	-rm -f analogueModel/*_m.cc analogueModel/*_m.h
	-rm -f application/*_m.cc application/*_m.h
	-rm -f connectionManager/*_m.cc connectionManager/*_m.h
	-rm -f mac/*_m.cc mac/*_m.h
	-rm -f messages/*_m.cc messages/*_m.h
	-rm -f mobility/*_m.cc mobility/*_m.h
	-rm -f mobility/traci/*_m.cc mobility/traci/*_m.h
	-rm -f netw/*_m.cc netw/*_m.h
	-rm -f nic/*_m.cc nic/*_m.h
	-rm -f node/*_m.cc node/*_m.h
	-rm -f obstacle/*_m.cc obstacle/*_m.h
	-rm -f phy/*_m.cc phy/*_m.h
	-rm -f power/*_m.cc power/*_m.h
	-rm -f power/battery/*_m.cc power/battery/*_m.h
	-rm -f transport/*_m.cc transport/*_m.h
	-rm -f utility/*_m.cc utility/*_m.h

cleanall: clean
	-rm -rf $(PROJECT_OUTPUT_DIR)

depend:
	$(MAKEDEPEND) $(INCLUDE_PATH) -f Makefile -P\$$O/ -- $(MSG_CC_FILES)  ./*.cc analogueModel/*.cc application/*.cc connectionManager/*.cc mac/*.cc messages/*.cc mobility/*.cc mobility/traci/*.cc netw/*.cc nic/*.cc node/*.cc obstacle/*.cc phy/*.cc power/*.cc power/battery/*.cc transport/*.cc utility/*.cc

# DO NOT DELETE THIS LINE -- make depend depends on it.
$O/analogueModel/SimpleObstacleShadowing.o: analogueModel/SimpleObstacleShadowing.cc \
	analogueModel/SimpleObstacleShadowing.h \
	../base/utils/FWMath.h \
	../base/modules/BaseWorldUtility.h \
	../base/utils/HostState.h \
	obstacle/Obstacle.h \
	../base/modules/BaseUtility.h \
	../base/utils/Coord.h \
	../base/utils/ImNotifiable.h \
	../base/modules/Blackboard.h \
	../base/utils/Move.h \
	../base/phyLayer/MappingBase.h \
	../base/phyLayer/AnalogueModel.h \
	../base/phyLayer/Interpolation.h \
	../base/phyLayer/MappingUtils.h \
	../base/phyLayer/Mapping.h \
	obstacle/ObstacleControl.h \
	../base/phyLayer/Signal_.h
$O/analogueModel/UWBIRStochasticPathlossModel.o: analogueModel/UWBIRStochasticPathlossModel.cc \
	../base/utils/FWMath.h \
	../base/modules/BaseWorldUtility.h \
	../base/utils/HostState.h \
	analogueModel/UWBIRStochasticPathlossModel.h \
	../base/modules/BaseUtility.h \
	../base/utils/Coord.h \
	../base/utils/ImNotifiable.h \
	../base/modules/Blackboard.h \
	../base/utils/Move.h \
	../base/phyLayer/MappingBase.h \
	../base/phyLayer/MappingUtils.h \
	../base/phyLayer/AnalogueModel.h \
	../base/phyLayer/Interpolation.h \
	../base/phyLayer/Mapping.h \
	../base/phyLayer/Signal_.h
$O/analogueModel/LogNormalShadowing.o: analogueModel/LogNormalShadowing.cc \
	../base/utils/FWMath.h \
	../base/utils/HostState.h \
	../base/modules/BaseUtility.h \
	analogueModel/LogNormalShadowing.h \
	../base/utils/Coord.h \
	../base/utils/ImNotifiable.h \
	../base/modules/Blackboard.h \
	../base/utils/Move.h \
	../base/phyLayer/MappingBase.h \
	../base/phyLayer/AnalogueModel.h \
	../base/phyLayer/Interpolation.h \
	../base/phyLayer/MappingUtils.h \
	../base/phyLayer/Mapping.h \
	../base/phyLayer/Signal_.h
$O/analogueModel/JakesFading.o: analogueModel/JakesFading.cc \
	../base/utils/FWMath.h \
	../base/modules/BaseWorldUtility.h \
	../base/utils/HostState.h \
	../base/modules/BaseUtility.h \
	../base/utils/Coord.h \
	../base/utils/ImNotifiable.h \
	../base/modules/Blackboard.h \
	../base/utils/Move.h \
	../base/phyLayer/MappingBase.h \
	../base/phyLayer/AnalogueModel.h \
	../base/phyLayer/Interpolation.h \
	../base/phyLayer/MappingUtils.h \
	../base/phyLayer/Mapping.h \
	../base/phyLayer/Signal_.h \
	analogueModel/JakesFading.h
$O/analogueModel/SimplePathlossModel.o: analogueModel/SimplePathlossModel.cc \
	../base/utils/FWMath.h \
	../base/modules/BaseWorldUtility.h \
	../base/utils/HostState.h \
	../base/modules/BaseUtility.h \
	../base/utils/Coord.h \
	../base/utils/ImNotifiable.h \
	../base/modules/Blackboard.h \
	../base/utils/Move.h \
	../base/phyLayer/MappingBase.h \
	../base/phyLayer/MappingUtils.h \
	../base/phyLayer/Interpolation.h \
	../base/phyLayer/AnalogueModel.h \
	../base/phyLayer/Mapping.h \
	../base/phyLayer/Signal_.h \
	analogueModel/SimplePathlossModel.h
$O/analogueModel/UWBIRIEEE802154APathlossModel.o: analogueModel/UWBIRIEEE802154APathlossModel.cc \
	../base/utils/FWMath.h \
	../base/modules/BaseWorldUtility.h \
	../base/utils/HostState.h \
	../base/modules/BaseUtility.h \
	utility/SimpleTimeConstMapping.h \
	analogueModel/UWBIRIEEE802154APathlossModel.h \
	../base/utils/Coord.h \
	../base/utils/ImNotifiable.h \
	../base/modules/Blackboard.h \
	../base/utils/Move.h \
	../base/phyLayer/MappingBase.h \
	../base/phyLayer/Interpolation.h \
	../base/phyLayer/MappingUtils.h \
	../base/phyLayer/AnalogueModel.h \
	../base/phyLayer/Mapping.h \
	../base/phyLayer/Signal_.h \
	utility/IEEE802154A.h
$O/application/SensorApplLayer.o: application/SensorApplLayer.cc \
	application/SensorApplLayer.h \
	../base/modules/BaseBattery.h \
	../base/utils/FWMath.h \
	../base/modules/BaseWorldUtility.h \
	../base/utils/NetwControlInfo.h \
	../base/utils/HostState.h \
	../base/modules/BaseUtility.h \
	../base/modules/BaseLayer.h \
	../base/modules/BaseApplLayer.h \
	../base/utils/Coord.h \
	../base/utils/ImNotifiable.h \
	../base/modules/BatteryAccess.h \
	../base/utils/PassedMessage.h \
	../base/modules/Blackboard.h \
	utility/Packet.h \
	../base/messages/ApplPkt_m.h \
	../base/modules/BaseModule.h \
	../base/utils/FindModule.h
$O/application/BurstApplLayerBattery.o: application/BurstApplLayerBattery.cc \
	application/BurstApplLayer.h \
	../base/modules/BaseBattery.h \
	../base/utils/FWMath.h \
	../base/utils/HostState.h \
	application/BurstApplLayerBattery.h \
	../base/modules/BaseUtility.h \
	../base/modules/TestApplLayer.h \
	../base/modules/BaseLayer.h \
	../base/modules/BaseApplLayer.h \
	../base/utils/Coord.h \
	../base/utils/ImNotifiable.h \
	../base/modules/BatteryAccess.h \
	../base/utils/PassedMessage.h \
	../base/modules/Blackboard.h \
	../base/modules/BaseModule.h \
	../base/messages/ApplPkt_m.h \
	../base/utils/FindModule.h
$O/application/BurstApplLayer.o: application/BurstApplLayer.cc \
	application/BurstApplLayer.h \
	../base/modules/BaseBattery.h \
	../base/utils/FWMath.h \
	../base/utils/HostState.h \
	../base/modules/BaseUtility.h \
	../base/modules/TestApplLayer.h \
	../base/modules/BaseLayer.h \
	../base/modules/BaseApplLayer.h \
	../base/utils/Coord.h \
	../base/modules/BatteryAccess.h \
	../base/utils/ImNotifiable.h \
	../base/modules/Blackboard.h \
	../base/utils/PassedMessage.h \
	../base/modules/BaseModule.h \
	../base/messages/ApplPkt_m.h \
	../base/utils/FindModule.h
$O/application/TestApplication.o: application/TestApplication.cc \
	../base/utils/FWMath.h \
	../base/utils/NetwControlInfo.h \
	../base/messages/MacPkt_m.h \
	phy/RadioUWBIR.h \
	analogueModel/UWBIRIEEE802154APathlossModel.h \
	../base/phyLayer/MappingBase.h \
	../base/phyLayer/MappingUtils.h \
	../base/phyLayer/DeciderToPhyInterface.h \
	messages/UWBIRMacPkt.h \
	../base/modules/BaseBattery.h \
	../base/modules/BaseWorldUtility.h \
	phy/DeciderResultUWBIR.h \
	../base/phyLayer/PhyUtils.h \
	messages/UWBIRMacPkt_m.h \
	utility/SimpleTimeConstMapping.h \
	utility/Packet.h \
	../base/messages/ChannelSenseRequest_m.h \
	../base/utils/Move.h \
	../base/phyLayer/BasePhyLayer.h \
	../base/connectionManager/ChannelAccess.h \
	utility/IEEE802154A.h \
	../base/messages/AirFrame_m.h \
	../base/utils/HostState.h \
	../base/phyLayer/MacToPhyInterface.h \
	../base/modules/BaseLayer.h \
	../base/utils/Coord.h \
	../base/phyLayer/ChannelInfo.h \
	../base/modules/Blackboard.h \
	../base/phyLayer/AnalogueModel.h \
	../base/utils/FindModule.h \
	../base/phyLayer/Mapping.h \
	../base/phyLayer/PhyToMacControlInfo.h \
	../base/phyLayer/Signal_.h \
	mac/AlohaMacLayer.h \
	../base/phyLayer/Decider.h \
	../base/phyLayer/MacToPhyControlInfo.h \
	../base/connectionManager/NicEntry.h \
	mac/UWBIRMac.h \
	../base/connectionManager/BaseConnectionManager.h \
	../base/phyLayer/ChannelState.h \
	../base/modules/BaseUtility.h \
	application/TestApplication.h \
	../base/modules/BaseMacLayer.h \
	../base/modules/BatteryAccess.h \
	../base/utils/ImNotifiable.h \
	../base/utils/PassedMessage.h \
	../base/messages/ApplPkt_m.h \
	../base/modules/BaseModule.h \
	../base/phyLayer/Interpolation.h
$O/application/TrafficGen.o: application/TrafficGen.cc \
	../base/modules/BaseBattery.h \
	application/TrafficGen.h \
	../base/utils/FWMath.h \
	../base/modules/BaseWorldUtility.h \
	../base/utils/HostState.h \
	../base/utils/NetwControlInfo.h \
	../base/modules/ArpInterface.h \
	../base/modules/BaseUtility.h \
	../base/utils/SimpleAddress.h \
	../base/messages/NetwPkt_m.h \
	../base/modules/BaseLayer.h \
	../base/utils/Coord.h \
	../base/modules/BaseApplLayer.h \
	../base/utils/ImNotifiable.h \
	../base/modules/BatteryAccess.h \
	utility/Packet.h \
	../base/modules/Blackboard.h \
	../base/utils/PassedMessage.h \
	../base/modules/BaseNetwLayer.h \
	../base/modules/BaseModule.h \
	../base/messages/ApplPkt_m.h \
	../base/utils/FindModule.h
$O/connectionManager/UnitDisk.o: connectionManager/UnitDisk.cc \
	../base/utils/Coord.h \
	../base/utils/FWMath.h \
	../base/connectionManager/NicEntry.h \
	../base/connectionManager/ConnectionManager.h \
	../base/connectionManager/BaseConnectionManager.h \
	connectionManager/UnitDisk.h
$O/mac/CSMA802154.o: mac/CSMA802154.cc \
	../base/utils/FWMath.h \
	../base/messages/AirFrame_m.h \
	../base/utils/HostState.h \
	../base/phyLayer/MacToPhyInterface.h \
	../base/messages/MacPkt_m.h \
	../base/modules/BaseLayer.h \
	../base/utils/Coord.h \
	mac/CSMA802154.h \
	../base/modules/Blackboard.h \
	../base/phyLayer/MappingBase.h \
	../base/phyLayer/AnalogueModel.h \
	../base/phyLayer/MappingUtils.h \
	../base/utils/FindModule.h \
	../base/phyLayer/Mapping.h \
	../base/phyLayer/PhyToMacControlInfo.h \
	../base/phyLayer/Signal_.h \
	mac/csma.h \
	../base/phyLayer/DeciderToPhyInterface.h \
	../base/phyLayer/Decider.h \
	../base/modules/BaseBattery.h \
	../base/connectionManager/NicEntry.h \
	../base/modules/BaseWorldUtility.h \
	utility/DroppedPacket.h \
	../base/phyLayer/PhyUtils.h \
	../base/connectionManager/BaseConnectionManager.h \
	../base/phyLayer/ChannelState.h \
	../base/modules/BaseUtility.h \
	../base/utils/MacToNetwControlInfo.h \
	../base/modules/BaseMacLayer.h \
	../base/modules/BatteryAccess.h \
	phy/DeciderResult802154Narrow.h \
	../base/utils/ImNotifiable.h \
	../base/utils/PassedMessage.h \
	../base/messages/ChannelSenseRequest_m.h \
	../base/utils/Move.h \
	../base/modules/BaseModule.h \
	../base/phyLayer/Interpolation.h
$O/mac/AlohaMacLayer.o: mac/AlohaMacLayer.cc \
	../base/utils/FWMath.h \
	../base/messages/AirFrame_m.h \
	../base/utils/HostState.h \
	../base/phyLayer/MacToPhyInterface.h \
	../base/messages/MacPkt_m.h \
	phy/RadioUWBIR.h \
	analogueModel/UWBIRIEEE802154APathlossModel.h \
	../base/modules/BaseLayer.h \
	../base/utils/Coord.h \
	../base/phyLayer/ChannelInfo.h \
	../base/modules/Blackboard.h \
	../base/phyLayer/MappingBase.h \
	../base/phyLayer/AnalogueModel.h \
	../base/phyLayer/MappingUtils.h \
	../base/utils/FindModule.h \
	../base/phyLayer/Mapping.h \
	../base/phyLayer/PhyToMacControlInfo.h \
	../base/phyLayer/Signal_.h \
	mac/AlohaMacLayer.h \
	../base/phyLayer/DeciderToPhyInterface.h \
	messages/UWBIRMacPkt.h \
	../base/phyLayer/Decider.h \
	../base/modules/BaseBattery.h \
	../base/phyLayer/MacToPhyControlInfo.h \
	../base/connectionManager/NicEntry.h \
	../base/modules/BaseWorldUtility.h \
	phy/DeciderResultUWBIR.h \
	../base/phyLayer/PhyUtils.h \
	mac/UWBIRMac.h \
	../base/phyLayer/ChannelState.h \
	messages/UWBIRMacPkt_m.h \
	../base/connectionManager/BaseConnectionManager.h \
	../base/modules/BaseUtility.h \
	utility/SimpleTimeConstMapping.h \
	../base/modules/BaseMacLayer.h \
	../base/utils/NetwToMacControlInfo.h \
	../base/utils/ImNotifiable.h \
	../base/modules/BatteryAccess.h \
	utility/Packet.h \
	../base/utils/PassedMessage.h \
	../base/messages/ChannelSenseRequest_m.h \
	../base/utils/Move.h \
	../base/modules/BaseModule.h \
	../base/phyLayer/Interpolation.h \
	../base/phyLayer/BasePhyLayer.h \
	../base/connectionManager/ChannelAccess.h \
	utility/IEEE802154A.h
$O/mac/CSMAMacLayer.o: mac/CSMAMacLayer.cc \
	../base/utils/FWMath.h \
	mac/CSMAMacLayer.h \
	../base/utils/HostState.h \
	../base/messages/MacPkt_m.h \
	../base/phyLayer/MacToPhyInterface.h \
	../base/modules/BaseLayer.h \
	../base/utils/Coord.h \
	../base/modules/Blackboard.h \
	../base/phyLayer/MappingBase.h \
	../base/phyLayer/AnalogueModel.h \
	../base/phyLayer/MappingUtils.h \
	../base/utils/FindModule.h \
	../base/modules/BaseArp.h \
	../base/phyLayer/Mapping.h \
	../base/phyLayer/Signal_.h \
	../base/modules/BaseBattery.h \
	../base/phyLayer/MacToPhyControlInfo.h \
	../base/connectionManager/NicEntry.h \
	../base/phyLayer/PhyUtils.h \
	../base/connectionManager/BaseConnectionManager.h \
	../base/phyLayer/ChannelState.h \
	../base/modules/ArpInterface.h \
	../base/modules/BaseUtility.h \
	../base/utils/SimpleAddress.h \
	../base/modules/BaseMacLayer.h \
	../base/utils/ImNotifiable.h \
	../base/modules/BatteryAccess.h \
	../base/utils/PassedMessage.h \
	../base/utils/Move.h \
	../base/modules/BaseModule.h \
	../base/phyLayer/Interpolation.h \
	../base/modules/AddressingInterface.h
$O/mac/Mac80211.o: mac/Mac80211.cc \
	../base/utils/FWMath.h \
	../base/messages/AirFrame_m.h \
	../base/utils/HostState.h \
	../base/messages/MacPkt_m.h \
	../base/phyLayer/MacToPhyInterface.h \
	phy/Decider80211.h \
	../base/modules/BaseLayer.h \
	../base/utils/Coord.h \
	../base/modules/Blackboard.h \
	utility/Consts80211.h \
	phy/DeciderResult80211.h \
	../base/phyLayer/MappingBase.h \
	../base/phyLayer/AnalogueModel.h \
	../base/phyLayer/MappingUtils.h \
	../base/utils/FindModule.h \
	../base/phyLayer/Mapping.h \
	../base/phyLayer/PhyToMacControlInfo.h \
	../base/phyLayer/Signal_.h \
	../base/phyLayer/DeciderToPhyInterface.h \
	../base/phyLayer/Decider.h \
	../base/modules/BaseBattery.h \
	../base/phyLayer/MacToPhyControlInfo.h \
	../base/connectionManager/NicEntry.h \
	../base/modules/BaseWorldUtility.h \
	../base/phyLayer/PhyUtils.h \
	../base/connectionManager/BaseConnectionManager.h \
	../base/phyLayer/ChannelState.h \
	../base/modules/BaseUtility.h \
	../base/utils/SimpleAddress.h \
	../base/utils/MacToNetwControlInfo.h \
	../base/modules/BaseMacLayer.h \
	../base/utils/NetwToMacControlInfo.h \
	messages/Mac80211Pkt_m.h \
	../base/modules/BatteryAccess.h \
	../base/utils/ImNotifiable.h \
	../base/utils/PassedMessage.h \
	../base/messages/ChannelSenseRequest_m.h \
	../base/utils/Move.h \
	../base/modules/BaseModule.h \
	../base/phyLayer/Interpolation.h \
	../base/phyLayer/BaseDecider.h \
	mac/Mac80211.h
$O/mac/UWBIRMac.o: mac/UWBIRMac.cc \
	../base/utils/FWMath.h \
	../base/messages/AirFrame_m.h \
	../base/utils/HostState.h \
	phy/MacToUWBIRPhyControlInfo.h \
	../base/messages/MacPkt_m.h \
	../base/phyLayer/MacToPhyInterface.h \
	phy/RadioUWBIR.h \
	analogueModel/UWBIRIEEE802154APathlossModel.h \
	../base/modules/BaseLayer.h \
	../base/utils/Coord.h \
	../base/phyLayer/ChannelInfo.h \
	../base/modules/Blackboard.h \
	../base/phyLayer/MappingBase.h \
	../base/phyLayer/AnalogueModel.h \
	../base/phyLayer/MappingUtils.h \
	../base/utils/FindModule.h \
	../base/phyLayer/Mapping.h \
	../base/phyLayer/PhyToMacControlInfo.h \
	../base/phyLayer/Signal_.h \
	../base/phyLayer/DeciderToPhyInterface.h \
	messages/UWBIRMacPkt.h \
	../base/phyLayer/Decider.h \
	../base/modules/BaseBattery.h \
	../base/phyLayer/MacToPhyControlInfo.h \
	../base/connectionManager/NicEntry.h \
	../base/modules/BaseWorldUtility.h \
	phy/DeciderResultUWBIR.h \
	../base/phyLayer/PhyUtils.h \
	mac/UWBIRMac.h \
	../base/connectionManager/BaseConnectionManager.h \
	messages/UWBIRMacPkt_m.h \
	../base/phyLayer/ChannelState.h \
	../base/modules/BaseUtility.h \
	utility/SimpleTimeConstMapping.h \
	../base/modules/BaseMacLayer.h \
	../base/modules/BatteryAccess.h \
	../base/utils/ImNotifiable.h \
	../base/utils/PassedMessage.h \
	utility/Packet.h \
	../base/messages/ChannelSenseRequest_m.h \
	../base/utils/Move.h \
	../base/modules/BaseModule.h \
	../base/phyLayer/Interpolation.h \
	../base/phyLayer/BasePhyLayer.h \
	../base/connectionManager/ChannelAccess.h \
	utility/IEEE802154A.h
$O/mac/csma.o: mac/csma.cc \
	../base/utils/FWMath.h \
	../base/messages/AirFrame_m.h \
	../base/utils/HostState.h \
	../base/phyLayer/MacToPhyInterface.h \
	../base/messages/MacPkt_m.h \
	../base/modules/BaseLayer.h \
	../base/utils/Coord.h \
	../base/modules/Blackboard.h \
	../base/phyLayer/MappingBase.h \
	../base/phyLayer/AnalogueModel.h \
	../base/phyLayer/MappingUtils.h \
	../base/phyLayer/Mapping.h \
	../base/modules/BaseArp.h \
	../base/utils/FindModule.h \
	../base/phyLayer/PhyToMacControlInfo.h \
	../base/phyLayer/Signal_.h \
	../base/phyLayer/DeciderToPhyInterface.h \
	mac/csma.h \
	../base/phyLayer/Decider.h \
	../base/modules/BaseBattery.h \
	../base/phyLayer/MacToPhyControlInfo.h \
	../base/connectionManager/NicEntry.h \
	utility/DroppedPacket.h \
	../base/modules/BaseWorldUtility.h \
	../base/phyLayer/PhyUtils.h \
	../base/connectionManager/BaseConnectionManager.h \
	../base/phyLayer/ChannelState.h \
	../base/modules/ArpInterface.h \
	../base/modules/BaseUtility.h \
	../base/utils/SimpleAddress.h \
	../base/utils/MacToNetwControlInfo.h \
	../base/modules/BaseMacLayer.h \
	../base/utils/NetwToMacControlInfo.h \
	../base/modules/BatteryAccess.h \
	../base/utils/ImNotifiable.h \
	phy/DeciderResult802154Narrow.h \
	../base/utils/PassedMessage.h \
	../base/messages/ChannelSenseRequest_m.h \
	../base/utils/Move.h \
	../base/phyLayer/Interpolation.h \
	../base/phyLayer/BaseDecider.h \
	../base/modules/BaseModule.h \
	../base/modules/AddressingInterface.h
$O/mac/Mac80211MultiChannel.o: mac/Mac80211MultiChannel.cc \
	../base/utils/FWMath.h \
	../base/messages/AirFrame_m.h \
	../base/utils/HostState.h \
	../base/phyLayer/MacToPhyInterface.h \
	../base/messages/MacPkt_m.h \
	../base/modules/BaseLayer.h \
	../base/utils/Coord.h \
	../base/phyLayer/ChannelInfo.h \
	../base/modules/Blackboard.h \
	utility/Consts80211.h \
	../base/phyLayer/MappingBase.h \
	../base/phyLayer/AnalogueModel.h \
	../base/phyLayer/MappingUtils.h \
	../base/utils/FindModule.h \
	../base/phyLayer/Mapping.h \
	../base/phyLayer/Signal_.h \
	../base/phyLayer/DeciderToPhyInterface.h \
	../base/phyLayer/Decider.h \
	../base/modules/BaseBattery.h \
	../base/connectionManager/NicEntry.h \
	../base/modules/BaseWorldUtility.h \
	../base/phyLayer/PhyUtils.h \
	../base/phyLayer/ChannelState.h \
	../base/connectionManager/BaseConnectionManager.h \
	../base/modules/BaseUtility.h \
	../base/modules/BaseMacLayer.h \
	messages/Mac80211Pkt_m.h \
	../base/modules/BatteryAccess.h \
	../base/utils/ImNotifiable.h \
	../base/utils/PassedMessage.h \
	../base/messages/ChannelSenseRequest_m.h \
	../base/utils/Move.h \
	mac/Mac80211MultiChannel.h \
	../base/modules/BaseModule.h \
	../base/phyLayer/Interpolation.h \
	../base/phyLayer/BasePhyLayer.h \
	../base/connectionManager/ChannelAccess.h \
	mac/Mac80211.h
$O/messages/UWBIRMacPkt.o: messages/UWBIRMacPkt.cc \
	messages/UWBIRMacPkt_m.h \
	../base/messages/MacPkt_m.h \
	messages/UWBIRMacPkt.h
$O/messages/DummyRoutePkt_m.o: messages/DummyRoutePkt_m.cc \
	../base/messages/NetwPkt_m.h \
	messages/DummyRoutePkt_m.h
$O/messages/UWBIRMacPkt_m.o: messages/UWBIRMacPkt_m.cc \
	messages/UWBIRMacPkt_m.h \
	../base/messages/MacPkt_m.h
$O/messages/Mac80211Pkt_m.o: messages/Mac80211Pkt_m.cc \
	messages/Mac80211Pkt_m.h \
	../base/messages/MacPkt_m.h
$O/messages/AggrPkt_m.o: messages/AggrPkt_m.cc \
	messages/AggrPkt_m.h \
	../base/messages/ApplPkt_m.h
$O/messages/AggrPkt.o: messages/AggrPkt.cc \
	messages/AggrPkt_m.h \
	messages/AggrPkt.h \
	../base/messages/ApplPkt_m.h
$O/messages/AirFrameUWBIR_m.o: messages/AirFrameUWBIR_m.cc \
	messages/AirFrameUWBIR_m.h \
	../base/utils/FWMath.h \
	../base/messages/AirFrame_m.h \
	../base/utils/HostState.h \
	../base/modules/BaseUtility.h \
	../base/utils/Coord.h \
	../base/utils/ImNotifiable.h \
	../base/modules/Blackboard.h \
	../base/utils/Move.h \
	../base/phyLayer/MappingBase.h \
	../base/phyLayer/MappingUtils.h \
	../base/phyLayer/Interpolation.h \
	../base/phyLayer/Mapping.h \
	../base/phyLayer/Signal_.h \
	utility/IEEE802154A.h
$O/mobility/CircleMobility.o: mobility/CircleMobility.cc \
	../base/modules/BaseBattery.h \
	../base/utils/FWMath.h \
	mobility/CircleMobility.h \
	../base/modules/BaseWorldUtility.h \
	../base/utils/HostState.h \
	../base/modules/BaseMobility.h \
	../base/modules/BaseUtility.h \
	../base/utils/Coord.h \
	../base/modules/BatteryAccess.h \
	../base/utils/ImNotifiable.h \
	../base/modules/Blackboard.h \
	../base/utils/Move.h \
	../base/modules/BaseModule.h \
	../base/utils/FindModule.h
$O/mobility/LineSegmentsMobilityBase.o: mobility/LineSegmentsMobilityBase.cc \
	../base/modules/BaseBattery.h \
	../base/utils/FWMath.h \
	../base/modules/BaseWorldUtility.h \
	../base/utils/HostState.h \
	../base/modules/BaseMobility.h \
	../base/modules/BaseUtility.h \
	mobility/LineSegmentsMobilityBase.h \
	../base/utils/Coord.h \
	../base/utils/ImNotifiable.h \
	../base/modules/BatteryAccess.h \
	../base/modules/Blackboard.h \
	../base/utils/Move.h \
	../base/modules/BaseModule.h \
	../base/utils/FindModule.h
$O/mobility/BonnMotionFileCache.o: mobility/BonnMotionFileCache.cc \
	../base/modules/BaseBattery.h \
	../base/utils/FWMath.h \
	../base/modules/BaseWorldUtility.h \
	../base/utils/HostState.h \
	../base/modules/BaseMobility.h \
	../base/modules/BaseUtility.h \
	mobility/BonnMotionFileCache.h \
	../base/utils/Coord.h \
	../base/modules/BatteryAccess.h \
	../base/utils/ImNotifiable.h \
	../base/modules/Blackboard.h \
	../base/utils/Move.h \
	../base/modules/BaseModule.h \
	../base/utils/FindModule.h
$O/mobility/RectangleMobility.o: mobility/RectangleMobility.cc \
	../base/modules/BaseBattery.h \
	../base/utils/FWMath.h \
	../base/modules/BaseWorldUtility.h \
	../base/utils/HostState.h \
	../base/modules/BaseMobility.h \
	../base/modules/BaseUtility.h \
	mobility/RectangleMobility.h \
	../base/utils/Coord.h \
	../base/modules/BatteryAccess.h \
	../base/utils/ImNotifiable.h \
	../base/modules/Blackboard.h \
	../base/utils/Move.h \
	../base/modules/BaseModule.h \
	../base/utils/FindModule.h
$O/mobility/LinearMobility.o: mobility/LinearMobility.cc \
	../base/modules/BaseBattery.h \
	../base/utils/FWMath.h \
	../base/modules/BaseWorldUtility.h \
	../base/utils/HostState.h \
	../base/modules/BaseMobility.h \
	mobility/LinearMobility.h \
	../base/modules/BaseUtility.h \
	../base/utils/Coord.h \
	../base/modules/BatteryAccess.h \
	../base/utils/ImNotifiable.h \
	../base/modules/Blackboard.h \
	../base/utils/Move.h \
	../base/modules/BaseModule.h \
	../base/utils/FindModule.h
$O/mobility/ConstSpeedMobility.o: mobility/ConstSpeedMobility.cc \
	../base/modules/BaseBattery.h \
	../base/utils/FWMath.h \
	../base/modules/BaseWorldUtility.h \
	../base/utils/HostState.h \
	../base/modules/BaseMobility.h \
	mobility/ConstSpeedMobility.h \
	../base/modules/BaseUtility.h \
	../base/utils/Coord.h \
	../base/modules/BatteryAccess.h \
	../base/utils/ImNotifiable.h \
	../base/modules/Blackboard.h \
	../base/utils/Move.h \
	../base/modules/BaseModule.h \
	../base/utils/FindModule.h
$O/mobility/MassMobility.o: mobility/MassMobility.cc \
	mobility/MassMobility.h \
	../base/modules/BaseBattery.h \
	../base/utils/FWMath.h \
	../base/modules/BaseWorldUtility.h \
	../base/utils/HostState.h \
	../base/modules/BaseMobility.h \
	../base/modules/BaseUtility.h \
	../base/utils/Coord.h \
	../base/modules/BatteryAccess.h \
	../base/utils/ImNotifiable.h \
	../base/modules/Blackboard.h \
	../base/utils/Move.h \
	../base/modules/BaseModule.h \
	../base/utils/FindModule.h
$O/mobility/TurtleMobility.o: mobility/TurtleMobility.cc \
	../base/modules/BaseBattery.h \
	../base/utils/FWMath.h \
	../base/modules/BaseWorldUtility.h \
	../base/utils/HostState.h \
	../base/modules/BaseMobility.h \
	../base/modules/BaseUtility.h \
	mobility/LineSegmentsMobilityBase.h \
	../base/utils/Coord.h \
	../base/utils/ImNotifiable.h \
	../base/modules/BatteryAccess.h \
	mobility/TurtleMobility.h \
	../base/modules/Blackboard.h \
	../base/utils/Move.h \
	../base/modules/BaseModule.h \
	../base/utils/FindModule.h
$O/mobility/TractorMobility.o: mobility/TractorMobility.cc \
	../base/modules/BaseBattery.h \
	../base/utils/FWMath.h \
	../base/modules/BaseWorldUtility.h \
	../base/utils/HostState.h \
	../base/modules/BaseMobility.h \
	mobility/TractorMobility.h \
	../base/modules/BaseUtility.h \
	../base/utils/Coord.h \
	../base/utils/ImNotifiable.h \
	../base/modules/BatteryAccess.h \
	../base/modules/Blackboard.h \
	../base/utils/Move.h \
	../base/modules/BaseModule.h \
	../base/utils/FindModule.h
$O/mobility/BonnMotionMobility.o: mobility/BonnMotionMobility.cc \
	../base/modules/BaseBattery.h \
	../base/utils/FWMath.h \
	../base/modules/BaseWorldUtility.h \
	../base/utils/HostState.h \
	mobility/BonnMotionMobility.h \
	../base/modules/BaseMobility.h \
	../base/modules/BaseUtility.h \
	mobility/LineSegmentsMobilityBase.h \
	mobility/BonnMotionFileCache.h \
	../base/utils/Coord.h \
	../base/modules/BatteryAccess.h \
	../base/utils/ImNotifiable.h \
	../base/modules/Blackboard.h \
	../base/utils/Move.h \
	../base/modules/BaseModule.h \
	../base/utils/FindModule.h
$O/mobility/ANSimMobility.o: mobility/ANSimMobility.cc \
	../base/modules/BaseBattery.h \
	../base/utils/FWMath.h \
	../base/modules/BaseWorldUtility.h \
	../base/utils/HostState.h \
	../base/modules/BaseMobility.h \
	../base/modules/BaseUtility.h \
	mobility/LineSegmentsMobilityBase.h \
	../base/utils/Coord.h \
	../base/utils/ImNotifiable.h \
	../base/modules/BatteryAccess.h \
	mobility/ANSimMobility.h \
	../base/modules/Blackboard.h \
	../base/utils/Move.h \
	../base/modules/BaseModule.h \
	../base/utils/FindModule.h
$O/mobility/traci/TraCIScenarioManagerLaunchd.o: mobility/traci/TraCIScenarioManagerLaunchd.cc \
	mobility/traci/TraCIScenarioManagerLaunchd.h \
	../base/connectionManager/NicEntry.h \
	../base/utils/FWMath.h \
	../base/modules/BaseWorldUtility.h \
	mobility/traci/TraCIConstants.h \
	../base/utils/HostState.h \
	../base/connectionManager/BaseConnectionManager.h \
	../base/modules/BaseUtility.h \
	../base/utils/Coord.h \
	../base/utils/ImNotifiable.h \
	../base/modules/Blackboard.h \
	../base/modules/BaseModule.h \
	mobility/traci/TraCIScenarioManager.h \
	../base/utils/FindModule.h
$O/mobility/traci/TraCIScenarioManager.o: mobility/traci/TraCIScenarioManager.cc \
	../base/modules/BaseBattery.h \
	../base/connectionManager/NicEntry.h \
	../base/utils/FWMath.h \
	../base/modules/BaseWorldUtility.h \
	mobility/traci/TraCIConstants.h \
	../base/utils/HostState.h \
	../base/modules/BaseMobility.h \
	../base/connectionManager/BaseConnectionManager.h \
	../base/modules/BaseUtility.h \
	mobility/traci/TraCIMobility.h \
	../base/utils/Coord.h \
	../base/modules/BatteryAccess.h \
	../base/utils/ImNotifiable.h \
	../base/modules/Blackboard.h \
	../base/utils/Move.h \
	../base/modules/BaseModule.h \
	mobility/traci/TraCIScenarioManager.h \
	../base/utils/FindModule.h
$O/mobility/traci/TraCIMobility.o: mobility/traci/TraCIMobility.cc \
	../base/modules/BaseBattery.h \
	../base/connectionManager/NicEntry.h \
	../base/utils/FWMath.h \
	../base/modules/BaseWorldUtility.h \
	../base/utils/HostState.h \
	../base/modules/BaseMobility.h \
	../base/connectionManager/BaseConnectionManager.h \
	../base/modules/BaseUtility.h \
	mobility/traci/TraCIMobility.h \
	../base/utils/Coord.h \
	../base/modules/BatteryAccess.h \
	../base/utils/ImNotifiable.h \
	../base/modules/Blackboard.h \
	../base/utils/Move.h \
	../base/modules/BaseModule.h \
	mobility/traci/TraCIScenarioManager.h \
	../base/utils/FindModule.h
$O/netw/ArpHost.o: netw/ArpHost.cc \
	netw/ArpHost.h \
	../base/utils/FWMath.h \
	../base/utils/Coord.h \
	../base/utils/ImNotifiable.h \
	../base/modules/Blackboard.h \
	../base/utils/HostState.h \
	../base/modules/BaseModule.h \
	../base/utils/FindModule.h \
	../base/modules/ArpInterface.h \
	../base/modules/BaseUtility.h \
	../base/modules/AddressingInterface.h
$O/netw/DummyRoute.o: netw/DummyRoute.cc \
	../base/utils/FWMath.h \
	../base/utils/HostState.h \
	../base/utils/NetwControlInfo.h \
	utility/SimTracer.h \
	../base/phyLayer/MacToPhyInterface.h \
	../base/messages/MacPkt_m.h \
	../base/modules/BaseLayer.h \
	../base/utils/Coord.h \
	../base/modules/Blackboard.h \
	../base/modules/BaseNetwLayer.h \
	../base/phyLayer/MappingBase.h \
	../base/connectionManager/ConnectionManager.h \
	messages/DummyRoutePkt_m.h \
	../base/phyLayer/MappingUtils.h \
	../base/phyLayer/AnalogueModel.h \
	../base/phyLayer/Mapping.h \
	../base/utils/FindModule.h \
	../base/phyLayer/Signal_.h \
	../base/modules/BaseBattery.h \
	../base/connectionManager/NicEntry.h \
	../base/modules/BaseWorldUtility.h \
	../base/modules/BaseMobility.h \
	../base/phyLayer/PhyUtils.h \
	../base/phyLayer/ChannelState.h \
	../base/connectionManager/BaseConnectionManager.h \
	../base/modules/ArpInterface.h \
	../base/modules/BaseUtility.h \
	netw/DummyRoute.h \
	../base/utils/SimpleAddress.h \
	../base/messages/NetwPkt_m.h \
	../base/modules/BaseMacLayer.h \
	../base/utils/NetwToMacControlInfo.h \
	../base/utils/ImNotifiable.h \
	../base/modules/BatteryAccess.h \
	utility/Packet.h \
	../base/utils/PassedMessage.h \
	../base/utils/Move.h \
	../base/phyLayer/Interpolation.h \
	../base/modules/BaseModule.h
$O/obstacle/ObstacleControl.o: obstacle/ObstacleControl.cc \
	../base/utils/Coord.h \
	../base/utils/FWMath.h \
	obstacle/Obstacle.h \
	obstacle/ObstacleControl.h
$O/obstacle/ObstacleDummy.o: obstacle/ObstacleDummy.cc \
	obstacle/ObstacleDummy.h
$O/obstacle/Obstacle.o: obstacle/Obstacle.cc \
	../base/utils/FWMath.h \
	../base/utils/Coord.h \
	obstacle/Obstacle.h
$O/phy/PhyLayer.o: phy/PhyLayer.cc \
	../base/utils/FWMath.h \
	../base/messages/AirFrame_m.h \
	phy/Decider802154Narrow.h \
	../base/utils/HostState.h \
	obstacle/Obstacle.h \
	../base/phyLayer/MacToPhyInterface.h \
	../base/messages/MacPkt_m.h \
	phy/Decider80211.h \
	analogueModel/LogNormalShadowing.h \
	../base/utils/Coord.h \
	../base/phyLayer/ChannelInfo.h \
	../base/modules/Blackboard.h \
	utility/Consts80211.h \
	../base/phyLayer/MappingBase.h \
	../base/phyLayer/MappingUtils.h \
	../base/phyLayer/AnalogueModel.h \
	../base/utils/FindModule.h \
	../base/phyLayer/Mapping.h \
	../base/modules/BaseArp.h \
	../base/phyLayer/Signal_.h \
	../base/phyLayer/DeciderToPhyInterface.h \
	analogueModel/SimpleObstacleShadowing.h \
	../base/phyLayer/Decider.h \
	../base/modules/BaseBattery.h \
	../base/connectionManager/NicEntry.h \
	../base/modules/BaseWorldUtility.h \
	../base/phyLayer/PhyUtils.h \
	../base/connectionManager/BaseConnectionManager.h \
	../base/phyLayer/ChannelState.h \
	../base/modules/ArpInterface.h \
	../base/modules/BaseUtility.h \
	../base/modules/BatteryAccess.h \
	../base/utils/ImNotifiable.h \
	../base/messages/ChannelSenseRequest_m.h \
	../base/utils/Move.h \
	phy/PhyLayer.h \
	../base/modules/BaseModule.h \
	../base/phyLayer/Interpolation.h \
	../base/phyLayer/BaseDecider.h \
	../base/phyLayer/BasePhyLayer.h \
	obstacle/ObstacleControl.h \
	../base/modules/AddressingInterface.h \
	../base/connectionManager/ChannelAccess.h \
	analogueModel/JakesFading.h \
	phy/SNRThresholdDecider.h \
	analogueModel/SimplePathlossModel.h
$O/phy/PhyLayerBattery.o: phy/PhyLayerBattery.cc \
	../base/utils/FWMath.h \
	../base/messages/AirFrame_m.h \
	../base/utils/HostState.h \
	phy/PhyLayerBattery.h \
	../base/phyLayer/MacToPhyInterface.h \
	../base/messages/MacPkt_m.h \
	phy/Decider80211.h \
	phy/Decider80211MultiChannel.h \
	phy/Decider80211Battery.h \
	../base/utils/Coord.h \
	../base/phyLayer/ChannelInfo.h \
	../base/modules/Blackboard.h \
	utility/Consts80211.h \
	../base/phyLayer/MappingBase.h \
	../base/phyLayer/MappingUtils.h \
	../base/phyLayer/AnalogueModel.h \
	../base/phyLayer/Mapping.h \
	../base/utils/FindModule.h \
	../base/phyLayer/Signal_.h \
	../base/phyLayer/DeciderToPhyInterface.h \
	../base/phyLayer/Decider.h \
	../base/modules/BaseBattery.h \
	../base/phyLayer/MacToPhyControlInfo.h \
	../base/connectionManager/NicEntry.h \
	../base/modules/BaseWorldUtility.h \
	../base/phyLayer/PhyUtils.h \
	../base/phyLayer/ChannelState.h \
	../base/connectionManager/BaseConnectionManager.h \
	../base/modules/BaseUtility.h \
	../base/modules/BatteryAccess.h \
	../base/utils/ImNotifiable.h \
	../base/messages/ChannelSenseRequest_m.h \
	../base/utils/Move.h \
	phy/PhyLayer.h \
	../base/phyLayer/BaseDecider.h \
	../base/modules/BaseModule.h \
	../base/phyLayer/Interpolation.h \
	../base/phyLayer/BasePhyLayer.h \
	../base/connectionManager/ChannelAccess.h
$O/phy/SNRThresholdDecider.o: phy/SNRThresholdDecider.cc \
	../base/phyLayer/Decider.h \
	../base/utils/FWMath.h \
	../base/messages/AirFrame_m.h \
	../base/modules/BaseWorldUtility.h \
	../base/utils/HostState.h \
	../base/phyLayer/ChannelState.h \
	../base/modules/BaseUtility.h \
	../base/utils/Coord.h \
	../base/utils/ImNotifiable.h \
	../base/modules/Blackboard.h \
	../base/messages/ChannelSenseRequest_m.h \
	../base/utils/Move.h \
	../base/phyLayer/MappingBase.h \
	../base/phyLayer/MappingUtils.h \
	../base/phyLayer/Interpolation.h \
	../base/phyLayer/BaseDecider.h \
	../base/phyLayer/Mapping.h \
	../base/phyLayer/Signal_.h \
	../base/phyLayer/DeciderToPhyInterface.h \
	phy/SNRThresholdDecider.h
$O/phy/Decider802154Narrow.o: phy/Decider802154Narrow.cc \
	../base/utils/FWMath.h \
	phy/Decider802154Narrow.h \
	../base/messages/AirFrame_m.h \
	../base/utils/HostState.h \
	../base/messages/MacPkt_m.h \
	../base/utils/Coord.h \
	../base/modules/Blackboard.h \
	../base/phyLayer/MappingBase.h \
	../base/phyLayer/MappingUtils.h \
	../base/utils/FindModule.h \
	../base/modules/BaseArp.h \
	../base/phyLayer/Mapping.h \
	../base/phyLayer/PhyToMacControlInfo.h \
	../base/phyLayer/Signal_.h \
	../base/phyLayer/DeciderToPhyInterface.h \
	../base/phyLayer/Decider.h \
	../base/modules/BaseWorldUtility.h \
	../base/phyLayer/ChannelState.h \
	../base/modules/ArpInterface.h \
	../base/modules/BaseUtility.h \
	phy/DeciderResult802154Narrow.h \
	../base/utils/ImNotifiable.h \
	../base/messages/ChannelSenseRequest_m.h \
	utility/Consts802154.h \
	../base/utils/Move.h \
	../base/modules/BaseModule.h \
	../base/phyLayer/BaseDecider.h \
	../base/phyLayer/Interpolation.h \
	../base/modules/AddressingInterface.h
$O/phy/DeciderUWBIREDSyncOnAddress.o: phy/DeciderUWBIREDSyncOnAddress.cc \
	../base/utils/FWMath.h \
	../base/messages/MacPkt_m.h \
	phy/RadioUWBIR.h \
	analogueModel/UWBIRIEEE802154APathlossModel.h \
	../base/phyLayer/MappingBase.h \
	../base/phyLayer/MappingUtils.h \
	../base/phyLayer/DeciderToPhyInterface.h \
	messages/UWBIRMacPkt.h \
	phy/DeciderUWBIREDSyncOnAddress.h \
	../base/modules/BaseBattery.h \
	../base/modules/BaseWorldUtility.h \
	phy/DeciderResultUWBIR.h \
	../base/phyLayer/PhyUtils.h \
	messages/UWBIRMacPkt_m.h \
	utility/SimpleTimeConstMapping.h \
	phy/DeciderUWBIRED.h \
	utility/Packet.h \
	../base/messages/ChannelSenseRequest_m.h \
	../base/utils/Move.h \
	../base/phyLayer/BasePhyLayer.h \
	../base/connectionManager/ChannelAccess.h \
	utility/IEEE802154A.h \
	../base/messages/AirFrame_m.h \
	../base/utils/HostState.h \
	../base/phyLayer/MacToPhyInterface.h \
	../base/modules/BaseLayer.h \
	../base/utils/Coord.h \
	../base/phyLayer/ChannelInfo.h \
	../base/modules/Blackboard.h \
	../base/phyLayer/AnalogueModel.h \
	../base/phyLayer/Mapping.h \
	../base/utils/FindModule.h \
	../base/phyLayer/PhyToMacControlInfo.h \
	../base/phyLayer/Signal_.h \
	mac/AlohaMacLayer.h \
	../base/phyLayer/Decider.h \
	../base/phyLayer/MacToPhyControlInfo.h \
	utility/UWBIRPacket.h \
	../base/connectionManager/NicEntry.h \
	mac/UWBIRMac.h \
	../base/phyLayer/ChannelState.h \
	../base/connectionManager/BaseConnectionManager.h \
	../base/modules/BaseUtility.h \
	../base/modules/BaseMacLayer.h \
	../base/utils/ImNotifiable.h \
	../base/modules/BatteryAccess.h \
	../base/utils/PassedMessage.h \
	../base/phyLayer/Interpolation.h \
	../base/modules/BaseModule.h
$O/phy/Decider80211MultiChannel.o: phy/Decider80211MultiChannel.cc \
	../base/phyLayer/Decider.h \
	../base/utils/FWMath.h \
	../base/messages/AirFrame_m.h \
	../base/modules/BaseWorldUtility.h \
	../base/utils/HostState.h \
	../base/phyLayer/ChannelState.h \
	phy/Decider80211.h \
	phy/Decider80211MultiChannel.h \
	../base/modules/BaseUtility.h \
	phy/Decider80211Battery.h \
	../base/utils/Coord.h \
	../base/utils/ImNotifiable.h \
	../base/modules/Blackboard.h \
	utility/Consts80211.h \
	../base/messages/ChannelSenseRequest_m.h \
	../base/utils/Move.h \
	phy/DeciderResult80211.h \
	../base/phyLayer/MappingBase.h \
	../base/phyLayer/BaseDecider.h \
	../base/phyLayer/Interpolation.h \
	../base/phyLayer/MappingUtils.h \
	../base/phyLayer/Mapping.h \
	../base/phyLayer/Signal_.h \
	../base/phyLayer/DeciderToPhyInterface.h
$O/phy/PhyLayerUWBIR.o: phy/PhyLayerUWBIR.cc \
	../base/utils/FWMath.h \
	phy/PhyLayerBattery.h \
	phy/MacToUWBIRPhyControlInfo.h \
	../base/messages/MacPkt_m.h \
	phy/RadioUWBIR.h \
	phy/Decider80211.h \
	phy/Decider80211Battery.h \
	analogueModel/UWBIRIEEE802154APathlossModel.h \
	../base/phyLayer/MappingBase.h \
	../base/phyLayer/MappingUtils.h \
	messages/UWBIRMacPkt.h \
	../base/phyLayer/DeciderToPhyInterface.h \
	phy/DeciderUWBIREDSyncOnAddress.h \
	../base/modules/BaseBattery.h \
	../base/modules/BaseWorldUtility.h \
	phy/DeciderResultUWBIR.h \
	../base/phyLayer/PhyUtils.h \
	messages/UWBIRMacPkt_m.h \
	utility/SimpleTimeConstMapping.h \
	phy/DeciderUWBIREDSync.h \
	phy/DeciderUWBIRED.h \
	utility/Packet.h \
	../base/messages/ChannelSenseRequest_m.h \
	../base/utils/Move.h \
	../base/phyLayer/BasePhyLayer.h \
	../base/connectionManager/ChannelAccess.h \
	utility/IEEE802154A.h \
	../base/messages/AirFrame_m.h \
	../base/utils/HostState.h \
	../base/phyLayer/MacToPhyInterface.h \
	phy/PhyLayerUWBIR.h \
	../base/modules/BaseLayer.h \
	../base/utils/Coord.h \
	../base/phyLayer/ChannelInfo.h \
	../base/modules/Blackboard.h \
	utility/Consts80211.h \
	../base/phyLayer/AnalogueModel.h \
	../base/phyLayer/Mapping.h \
	../base/utils/FindModule.h \
	../base/phyLayer/PhyToMacControlInfo.h \
	../base/phyLayer/Signal_.h \
	mac/AlohaMacLayer.h \
	messages/AirFrameUWBIR_m.h \
	../base/phyLayer/Decider.h \
	../base/phyLayer/MacToPhyControlInfo.h \
	utility/UWBIRPacket.h \
	../base/connectionManager/NicEntry.h \
	mac/UWBIRMac.h \
	../base/connectionManager/BaseConnectionManager.h \
	../base/phyLayer/ChannelState.h \
	analogueModel/UWBIRStochasticPathlossModel.h \
	../base/modules/BaseUtility.h \
	../base/modules/BaseMacLayer.h \
	../base/modules/BatteryAccess.h \
	../base/utils/ImNotifiable.h \
	../base/utils/PassedMessage.h \
	phy/PhyLayer.h \
	../base/phyLayer/BaseDecider.h \
	../base/modules/BaseModule.h \
	../base/phyLayer/Interpolation.h
$O/phy/Decider80211.o: phy/Decider80211.cc \
	../base/phyLayer/Decider.h \
	../base/utils/FWMath.h \
	../base/modules/BaseWorldUtility.h \
	../base/messages/AirFrame_m.h \
	../base/utils/HostState.h \
	../base/phyLayer/ChannelState.h \
	../base/messages/MacPkt_m.h \
	../base/modules/BaseUtility.h \
	phy/Decider80211.h \
	../base/utils/Coord.h \
	messages/Mac80211Pkt_m.h \
	../base/utils/ImNotifiable.h \
	../base/modules/Blackboard.h \
	../base/messages/ChannelSenseRequest_m.h \
	utility/Consts80211.h \
	../base/utils/Move.h \
	phy/DeciderResult80211.h \
	../base/phyLayer/MappingBase.h \
	../base/phyLayer/Interpolation.h \
	../base/phyLayer/MappingUtils.h \
	../base/phyLayer/BaseDecider.h \
	../base/phyLayer/Mapping.h \
	../base/phyLayer/Signal_.h \
	../base/phyLayer/DeciderToPhyInterface.h
$O/phy/DeciderUWBIREDSync.o: phy/DeciderUWBIREDSync.cc \
	../base/utils/FWMath.h \
	../base/messages/MacPkt_m.h \
	phy/RadioUWBIR.h \
	analogueModel/UWBIRIEEE802154APathlossModel.h \
	../base/phyLayer/MappingBase.h \
	../base/phyLayer/MappingUtils.h \
	../base/phyLayer/DeciderToPhyInterface.h \
	messages/UWBIRMacPkt.h \
	../base/modules/BaseBattery.h \
	../base/modules/BaseWorldUtility.h \
	phy/DeciderResultUWBIR.h \
	../base/phyLayer/PhyUtils.h \
	messages/UWBIRMacPkt_m.h \
	phy/DeciderUWBIREDSync.h \
	utility/SimpleTimeConstMapping.h \
	phy/DeciderUWBIRED.h \
	utility/Packet.h \
	../base/messages/ChannelSenseRequest_m.h \
	../base/utils/Move.h \
	../base/phyLayer/BasePhyLayer.h \
	../base/connectionManager/ChannelAccess.h \
	utility/IEEE802154A.h \
	../base/messages/AirFrame_m.h \
	../base/utils/HostState.h \
	../base/phyLayer/MacToPhyInterface.h \
	../base/modules/BaseLayer.h \
	../base/utils/Coord.h \
	../base/phyLayer/ChannelInfo.h \
	../base/modules/Blackboard.h \
	../base/phyLayer/AnalogueModel.h \
	../base/phyLayer/Mapping.h \
	../base/utils/FindModule.h \
	../base/phyLayer/PhyToMacControlInfo.h \
	../base/phyLayer/Signal_.h \
	mac/AlohaMacLayer.h \
	../base/phyLayer/Decider.h \
	../base/phyLayer/MacToPhyControlInfo.h \
	utility/UWBIRPacket.h \
	../base/connectionManager/NicEntry.h \
	mac/UWBIRMac.h \
	../base/phyLayer/ChannelState.h \
	../base/connectionManager/BaseConnectionManager.h \
	../base/modules/BaseUtility.h \
	../base/modules/BaseMacLayer.h \
	../base/utils/ImNotifiable.h \
	../base/modules/BatteryAccess.h \
	../base/utils/PassedMessage.h \
	../base/phyLayer/Interpolation.h \
	../base/modules/BaseModule.h
$O/phy/DeciderUWBIRED.o: phy/DeciderUWBIRED.cc \
	../base/utils/FWMath.h \
	phy/PhyLayerBattery.h \
	../base/messages/MacPkt_m.h \
	phy/RadioUWBIR.h \
	phy/Decider80211.h \
	phy/Decider80211Battery.h \
	analogueModel/UWBIRIEEE802154APathlossModel.h \
	../base/phyLayer/MappingBase.h \
	../base/phyLayer/MappingUtils.h \
	messages/UWBIRMacPkt.h \
	../base/phyLayer/DeciderToPhyInterface.h \
	phy/DeciderUWBIREDSyncOnAddress.h \
	../base/modules/BaseBattery.h \
	../base/modules/BaseWorldUtility.h \
	phy/DeciderResultUWBIR.h \
	../base/phyLayer/PhyUtils.h \
	messages/UWBIRMacPkt_m.h \
	utility/SimpleTimeConstMapping.h \
	phy/DeciderUWBIREDSync.h \
	phy/DeciderUWBIRED.h \
	utility/Packet.h \
	../base/messages/ChannelSenseRequest_m.h \
	../base/utils/Move.h \
	../base/phyLayer/BasePhyLayer.h \
	../base/connectionManager/ChannelAccess.h \
	utility/IEEE802154A.h \
	../base/messages/AirFrame_m.h \
	../base/utils/HostState.h \
	../base/phyLayer/MacToPhyInterface.h \
	phy/PhyLayerUWBIR.h \
	../base/modules/BaseLayer.h \
	../base/utils/Coord.h \
	../base/phyLayer/ChannelInfo.h \
	../base/modules/Blackboard.h \
	utility/Consts80211.h \
	../base/phyLayer/AnalogueModel.h \
	../base/phyLayer/Mapping.h \
	../base/utils/FindModule.h \
	../base/phyLayer/PhyToMacControlInfo.h \
	../base/phyLayer/Signal_.h \
	mac/AlohaMacLayer.h \
	messages/AirFrameUWBIR_m.h \
	../base/phyLayer/Decider.h \
	../base/phyLayer/MacToPhyControlInfo.h \
	utility/UWBIRPacket.h \
	../base/connectionManager/NicEntry.h \
	mac/UWBIRMac.h \
	../base/phyLayer/ChannelState.h \
	../base/connectionManager/BaseConnectionManager.h \
	analogueModel/UWBIRStochasticPathlossModel.h \
	../base/modules/BaseUtility.h \
	../base/modules/BaseMacLayer.h \
	../base/utils/ImNotifiable.h \
	../base/modules/BatteryAccess.h \
	../base/utils/PassedMessage.h \
	phy/PhyLayer.h \
	../base/phyLayer/BaseDecider.h \
	../base/modules/BaseModule.h \
	../base/phyLayer/Interpolation.h
$O/phy/Decider80211Battery.o: phy/Decider80211Battery.cc \
	../base/phyLayer/Decider.h \
	../base/utils/FWMath.h \
	../base/messages/AirFrame_m.h \
	../base/modules/BaseWorldUtility.h \
	../base/utils/HostState.h \
	../base/phyLayer/ChannelState.h \
	phy/Decider80211.h \
	../base/modules/BaseUtility.h \
	phy/Decider80211Battery.h \
	../base/utils/Coord.h \
	../base/utils/ImNotifiable.h \
	../base/modules/Blackboard.h \
	../base/messages/ChannelSenseRequest_m.h \
	utility/Consts80211.h \
	../base/utils/Move.h \
	../base/phyLayer/MappingBase.h \
	../base/phyLayer/BaseDecider.h \
	../base/phyLayer/MappingUtils.h \
	../base/phyLayer/Interpolation.h \
	../base/phyLayer/Mapping.h \
	../base/phyLayer/Signal_.h \
	../base/phyLayer/DeciderToPhyInterface.h
$O/power/battery/SimpleBattery.o: power/battery/SimpleBattery.cc \
	power/battery/BatteryState.h \
	../base/modules/BaseBattery.h \
	../base/utils/FWMath.h \
	../base/utils/HostState.h \
	power/battery/BatteryStats.h \
	power/battery/SimpleBattery.h \
	../base/modules/BaseUtility.h \
	../base/utils/Coord.h \
	../base/utils/ImNotifiable.h \
	../base/modules/Blackboard.h \
	../base/modules/BaseModule.h \
	../base/utils/FindModule.h \
	power/battery/DeviceEntry.h
$O/power/battery/BatteryStats.o: power/battery/BatteryStats.cc \
	power/battery/BatteryState.h \
	../base/modules/BaseBattery.h \
	../base/utils/FWMath.h \
	../base/utils/HostState.h \
	power/battery/BatteryStats.h \
	power/battery/SimpleBattery.h \
	../base/modules/BaseUtility.h \
	../base/utils/Coord.h \
	../base/utils/ImNotifiable.h \
	../base/modules/Blackboard.h \
	../base/modules/BaseModule.h \
	../base/utils/FindModule.h \
	power/battery/DeviceEntry.h
$O/transport/Aggregation.o: transport/Aggregation.cc \
	../base/modules/BaseBattery.h \
	../base/utils/FWMath.h \
	../base/utils/HostState.h \
	messages/AggrPkt_m.h \
	../base/modules/BaseUtility.h \
	transport/Aggregation.h \
	../base/modules/BaseLayer.h \
	../base/utils/Coord.h \
	../base/modules/BatteryAccess.h \
	../base/utils/ImNotifiable.h \
	../base/modules/Blackboard.h \
	../base/utils/PassedMessage.h \
	messages/AggrPkt.h \
	../base/messages/ApplPkt_m.h \
	../base/modules/BaseModule.h \
	../base/utils/FindModule.h
$O/utility/IEEE802154A.o: utility/IEEE802154A.cc \
	../base/utils/FWMath.h \
	../base/utils/HostState.h \
	../base/modules/BaseUtility.h \
	../base/utils/Coord.h \
	../base/utils/ImNotifiable.h \
	../base/modules/Blackboard.h \
	../base/utils/Move.h \
	../base/phyLayer/MappingBase.h \
	../base/phyLayer/MappingUtils.h \
	../base/phyLayer/Interpolation.h \
	../base/phyLayer/Mapping.h \
	../base/phyLayer/Signal_.h \
	utility/IEEE802154A.h
$O/utility/phyPER.o: utility/phyPER.cc \
	utility/UWBIRPacket.h \
	../base/utils/Coord.h \
	../base/utils/FWMath.h \
	../base/utils/ImNotifiable.h \
	utility/Packet.h \
	../base/modules/Blackboard.h \
	../base/utils/HostState.h \
	../base/modules/BaseModule.h \
	../base/utils/FindModule.h \
	../base/modules/BaseUtility.h \
	utility/phyPER.h
$O/utility/SimTracer.o: utility/SimTracer.cc \
	../base/modules/BaseBattery.h \
	../base/connectionManager/NicEntry.h \
	../base/utils/FWMath.h \
	../base/modules/BaseWorldUtility.h \
	../base/utils/HostState.h \
	utility/SimTracer.h \
	../base/connectionManager/BaseConnectionManager.h \
	../base/modules/BaseUtility.h \
	../base/modules/BaseLayer.h \
	../base/utils/Coord.h \
	../base/modules/BatteryAccess.h \
	../base/utils/ImNotifiable.h \
	../base/modules/Blackboard.h \
	../base/utils/PassedMessage.h \
	utility/Packet.h \
	../base/connectionManager/ConnectionManager.h \
	../base/modules/BaseModule.h \
	../base/utils/FindModule.h

