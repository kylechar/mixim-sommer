//
// Generated file, do not edit! Created by opp_msgc 4.1 from messages/NetwPkt.msg.
//

#ifndef _NETWPKT_M_H_
#define _NETWPKT_M_H_

#include <omnetpp.h>

// opp_msgc version check
#define MSGC_VERSION 0x0401
#if (MSGC_VERSION!=OMNETPP_VERSION)
#    error Version mismatch! Probably this file was generated by an earlier version of opp_msgc: 'make clean' should help.
#endif



/**
 * Class generated from <tt>messages/NetwPkt.msg</tt> by opp_msgc.
 * <pre>
 * packet NetwPkt
 * {
 *     int destAddr;        
 *     int srcAddr;         
 *     int ttl = 1; 
 *     unsigned long seqNum = 0; 
 * }
 * </pre>
 */
class NetwPkt : public ::cPacket
{
  protected:
    int destAddr_var;
    int srcAddr_var;
    int ttl_var;
    unsigned long seqNum_var;

    // protected and unimplemented operator==(), to prevent accidental usage
    bool operator==(const NetwPkt&);

  public:
    NetwPkt(const char *name=NULL, int kind=0);
    NetwPkt(const NetwPkt& other);
    virtual ~NetwPkt();
    NetwPkt& operator=(const NetwPkt& other);
    virtual NetwPkt *dup() const {return new NetwPkt(*this);}
    virtual void parsimPack(cCommBuffer *b);
    virtual void parsimUnpack(cCommBuffer *b);

    // field getter/setter methods
    virtual int getDestAddr() const;
    virtual void setDestAddr(int destAddr_var);
    virtual int getSrcAddr() const;
    virtual void setSrcAddr(int srcAddr_var);
    virtual int getTtl() const;
    virtual void setTtl(int ttl_var);
    virtual unsigned long getSeqNum() const;
    virtual void setSeqNum(unsigned long seqNum_var);
};

inline void doPacking(cCommBuffer *b, NetwPkt& obj) {obj.parsimPack(b);}
inline void doUnpacking(cCommBuffer *b, NetwPkt& obj) {obj.parsimUnpack(b);}


#endif // _NETWPKT_M_H_
