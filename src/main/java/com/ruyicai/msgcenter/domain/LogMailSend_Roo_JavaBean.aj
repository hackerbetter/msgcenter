// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ruyicai.msgcenter.domain;

import java.lang.String;
import java.util.Date;

privileged aspect LogMailSend_Roo_JavaBean {
    
    public String LogMailSend.getSendTo() {
        return this.sendTo;
    }
    
    public void LogMailSend.setSendTo(String sendTo) {
        this.sendTo = sendTo;
    }
    
    public String LogMailSend.getContent() {
        return this.content;
    }
    
    public void LogMailSend.setContent(String content) {
        this.content = content;
    }
    
    public String LogMailSend.getResult() {
        return this.result;
    }
    
    public void LogMailSend.setResult(String result) {
        this.result = result;
    }
    
    public Date LogMailSend.getCreateTime() {
        return this.createTime;
    }
    
    public void LogMailSend.setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
    
}