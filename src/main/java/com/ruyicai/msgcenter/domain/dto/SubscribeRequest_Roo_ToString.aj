// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ruyicai.msgcenter.domain.dto;

import java.lang.String;

privileged aspect SubscribeRequest_Roo_ToString {
    
    public String SubscribeRequest.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Amt: ").append(getAmt()).append(", ");
        sb.append("Batchcode: ").append(getBatchcode()).append(", ");
        sb.append("Desc: ").append(getDesc()).append(", ");
        sb.append("Endtime: ").append(getEndtime()).append(", ");
        sb.append("Lotmulti: ").append(getLotmulti()).append(", ");
        sb.append("LotsType: ").append(getLotsType());
        return sb.toString();
    }
    
}