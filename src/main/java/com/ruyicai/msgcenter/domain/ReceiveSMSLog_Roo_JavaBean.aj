// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ruyicai.msgcenter.domain;

import java.lang.String;
import java.util.Date;

privileged aspect ReceiveSMSLog_Roo_JavaBean {
    
    public String ReceiveSMSLog.getMobileid() {
        return this.mobileid;
    }
    
    public void ReceiveSMSLog.setMobileid(String mobileid) {
        this.mobileid = mobileid;
    }
    
    public String ReceiveSMSLog.getContent() {
        return this.content;
    }
    
    public void ReceiveSMSLog.setContent(String content) {
        this.content = content;
    }
    
    public Date ReceiveSMSLog.getSendTime() {
        return this.sendTime;
    }
    
    public void ReceiveSMSLog.setSendTime(Date sendTime) {
        this.sendTime = sendTime;
    }
    
    public Date ReceiveSMSLog.getCreateTime() {
        return this.createTime;
    }
    
    public void ReceiveSMSLog.setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
    
    public String ReceiveSMSLog.getChannelName() {
        return this.channelName;
    }
    
    public void ReceiveSMSLog.setChannelName(String channelName) {
        this.channelName = channelName;
    }
    
}
