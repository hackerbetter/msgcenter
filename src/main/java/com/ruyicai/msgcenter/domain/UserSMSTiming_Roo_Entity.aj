// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ruyicai.msgcenter.domain;

import com.ruyicai.msgcenter.domain.UserSMSTiming;
import java.lang.Long;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PersistenceContext;
import javax.persistence.Table;
import org.springframework.transaction.annotation.Transactional;

privileged aspect UserSMSTiming_Roo_Entity {
    
    declare @type: UserSMSTiming: @Entity;
    
    declare @type: UserSMSTiming: @Table(name = "USERSMSTIMING");
    
    @PersistenceContext
    transient EntityManager UserSMSTiming.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long UserSMSTiming.id;
    
    public Long UserSMSTiming.getId() {
        return this.id;
    }
    
    public void UserSMSTiming.setId(Long id) {
        this.id = id;
    }
    
    @Transactional
    public void UserSMSTiming.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void UserSMSTiming.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            UserSMSTiming attached = UserSMSTiming.findUserSMSTiming(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void UserSMSTiming.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void UserSMSTiming.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public UserSMSTiming UserSMSTiming.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        UserSMSTiming merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager UserSMSTiming.entityManager() {
        EntityManager em = new UserSMSTiming().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long UserSMSTiming.countUserSMSTimings() {
        return entityManager().createQuery("SELECT COUNT(o) FROM UserSMSTiming o", Long.class).getSingleResult();
    }
    
    public static List<UserSMSTiming> UserSMSTiming.findAllUserSMSTimings() {
        return entityManager().createQuery("SELECT o FROM UserSMSTiming o", UserSMSTiming.class).getResultList();
    }
    
    public static UserSMSTiming UserSMSTiming.findUserSMSTiming(Long id) {
        if (id == null) return null;
        return entityManager().find(UserSMSTiming.class, id);
    }
    
    public static List<UserSMSTiming> UserSMSTiming.findUserSMSTimingEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM UserSMSTiming o", UserSMSTiming.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
