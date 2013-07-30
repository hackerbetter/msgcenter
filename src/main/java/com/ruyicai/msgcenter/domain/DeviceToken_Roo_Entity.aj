// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ruyicai.msgcenter.domain;

import com.ruyicai.msgcenter.domain.DeviceToken;
import com.ruyicai.msgcenter.domain.DeviceTokenPK;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Table;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DeviceToken_Roo_Entity {
    
    declare @type: DeviceToken: @Entity;
    
    declare @type: DeviceToken: @Table(name = "DEVICETOKEN");
    
    @PersistenceContext
    transient EntityManager DeviceToken.entityManager;
    
    @Transactional
    public void DeviceToken.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void DeviceToken.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            DeviceToken attached = DeviceToken.findDeviceToken(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void DeviceToken.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void DeviceToken.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public DeviceToken DeviceToken.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        DeviceToken merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager DeviceToken.entityManager() {
        EntityManager em = new DeviceToken().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long DeviceToken.countDeviceTokens() {
        return entityManager().createQuery("SELECT COUNT(o) FROM DeviceToken o", Long.class).getSingleResult();
    }
    
    public static List<DeviceToken> DeviceToken.findAllDeviceTokens() {
        return entityManager().createQuery("SELECT o FROM DeviceToken o", DeviceToken.class).getResultList();
    }
    
    public static DeviceToken DeviceToken.findDeviceToken(DeviceTokenPK id) {
        if (id == null) return null;
        return entityManager().find(DeviceToken.class, id);
    }
    
    public static List<DeviceToken> DeviceToken.findDeviceTokenEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM DeviceToken o", DeviceToken.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}