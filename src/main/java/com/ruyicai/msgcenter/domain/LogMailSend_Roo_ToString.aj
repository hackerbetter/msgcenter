// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ruyicai.msgcenter.domain;

import java.lang.String;

privileged aspect LogMailSend_Roo_ToString {
    
    public String LogMailSend.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Content: ").append(getContent()).append(", ");
        sb.append("CreateTime: ").append(getCreateTime()).append(", ");
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("Result: ").append(getResult()).append(", ");
        sb.append("SendTo: ").append(getSendTo());
        return sb.toString();
    }
    
}