// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ruyicai.msgcenter.domain;

import com.ruyicai.msgcenter.domain.ReceiveSMSLog;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.lang.String;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect ReceiveSMSLog_Roo_Json {
    
    public String ReceiveSMSLog.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static ReceiveSMSLog ReceiveSMSLog.fromJsonToReceiveSMSLog(String json) {
        return new JSONDeserializer<ReceiveSMSLog>().use(null, ReceiveSMSLog.class).deserialize(json);
    }
    
    public static String ReceiveSMSLog.toJsonArray(Collection<ReceiveSMSLog> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static Collection<ReceiveSMSLog> ReceiveSMSLog.fromJsonArrayToReceiveSMSLogs(String json) {
        return new JSONDeserializer<List<ReceiveSMSLog>>().use(null, ArrayList.class).use("values", ReceiveSMSLog.class).deserialize(json);
    }
    
}
