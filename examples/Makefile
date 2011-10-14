#
# OMNeT++/OMNEST Makefile for mixim-sommer
#
# This file was generated with the command:
#  opp_makemake -f --nolink -O out -d multiConnectionManager -d CSMAMac -d analogueModels -d Mac80211 -d ieee802154a -d ieee802154Narrow -d baseNetwork -L../out/$(CONFIGNAME) -L../out/$(CONFIGNAME)/base -L../out/$(CONFIGNAME)/tests/power/utils -L../out/$(CONFIGNAME)/tests/testUtils -L../out/$(CONFIGNAME)/modules
#

# C++ include paths (with -I)
INCLUDE_PATH = -I.

# Output directory
PROJECT_OUTPUT_DIR = ../out
PROJECTRELATIVE_PATH = examples
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

COPTS = $(CFLAGS)  $(INCLUDE_PATH) -I$(OMNETPP_INCL_DIR)
MSGCOPTS = $(INCLUDE_PATH)

#------------------------------------------------------------------------------
# User-supplied makefile fragment(s)
# >>>
# <<<
#------------------------------------------------------------------------------

# Main target

all: $(OBJS) submakedirs Makefile
	@# Do nothing

submakedirs:  multiConnectionManager_dir CSMAMac_dir analogueModels_dir Mac80211_dir ieee802154a_dir ieee802154Narrow_dir baseNetwork_dir

.PHONY: multiConnectionManager CSMAMac analogueModels Mac80211 ieee802154a ieee802154Narrow baseNetwork
multiConnectionManager: multiConnectionManager_dir
CSMAMac: CSMAMac_dir
analogueModels: analogueModels_dir
Mac80211: Mac80211_dir
ieee802154a: ieee802154a_dir
ieee802154Narrow: ieee802154Narrow_dir
baseNetwork: baseNetwork_dir

multiConnectionManager_dir:
	cd multiConnectionManager && $(MAKE)

CSMAMac_dir:
	cd CSMAMac && $(MAKE)

analogueModels_dir:
	cd analogueModels && $(MAKE)

Mac80211_dir:
	cd Mac80211 && $(MAKE)

ieee802154a_dir:
	cd ieee802154a && $(MAKE)

ieee802154Narrow_dir:
	cd ieee802154Narrow && $(MAKE)

baseNetwork_dir:
	cd baseNetwork && $(MAKE)

.SUFFIXES: .cc

$O/%.o: %.cc
	@$(MKPATH) $(dir $@)
	$(CXX) -c $(COPTS) -o $@ $<

%_m.cc %_m.h: %.msg
	$(MSGC) -s _m.cc $(MSGCOPTS) $?

msgheaders: $(MSGFILES:.msg=_m.h)
	cd multiConnectionManager && $(MAKE) msgheaders
	cd CSMAMac && $(MAKE) msgheaders
	cd analogueModels && $(MAKE) msgheaders
	cd Mac80211 && $(MAKE) msgheaders
	cd ieee802154a && $(MAKE) msgheaders
	cd ieee802154Narrow && $(MAKE) msgheaders
	cd baseNetwork && $(MAKE) msgheaders

clean:
	-rm -rf $O
	-rm -f mixim-sommer mixim-sommer.exe libmixim-sommer.so libmixim-sommer.a libmixim-sommer.dll libmixim-sommer.dylib
	-rm -f ./*_m.cc ./*_m.h

	-cd multiConnectionManager && $(MAKE) clean
	-cd CSMAMac && $(MAKE) clean
	-cd analogueModels && $(MAKE) clean
	-cd Mac80211 && $(MAKE) clean
	-cd ieee802154a && $(MAKE) clean
	-cd ieee802154Narrow && $(MAKE) clean
	-cd baseNetwork && $(MAKE) clean

cleanall: clean
	-rm -rf $(PROJECT_OUTPUT_DIR)

depend:
	$(MAKEDEPEND) $(INCLUDE_PATH) -f Makefile -P\$$O/ -- $(MSG_CC_FILES)  ./*.cc
	-cd multiConnectionManager && if [ -f Makefile ]; then $(MAKE) depend; fi
	-cd CSMAMac && if [ -f Makefile ]; then $(MAKE) depend; fi
	-cd analogueModels && if [ -f Makefile ]; then $(MAKE) depend; fi
	-cd Mac80211 && if [ -f Makefile ]; then $(MAKE) depend; fi
	-cd ieee802154a && if [ -f Makefile ]; then $(MAKE) depend; fi
	-cd ieee802154Narrow && if [ -f Makefile ]; then $(MAKE) depend; fi
	-cd baseNetwork && if [ -f Makefile ]; then $(MAKE) depend; fi

# DO NOT DELETE THIS LINE -- make depend depends on it.

