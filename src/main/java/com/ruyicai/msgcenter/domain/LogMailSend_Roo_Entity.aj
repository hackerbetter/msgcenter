// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ruyicai.msgcenter.domain;

import com.ruyicai.msgcenter.domain.LogMailSend;
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

privileged aspect LogMailSend_Roo_Entity {
    
    declare @type: LogMailSend: @Entity;
    
    declare @type: LogMailSend: @Table(name = "LOGMAILSEND");
    
    @PersistenceContext
    transient EntityManager LogMailSend.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long LogMailSend.id;
    
    public Long LogMailSend.getId() {
        return this.id;
    }
    
    public void LogMailSend.setId(Long id) {
        this.id = id;
    }
    
    @Transactional
    public void LogMailSend.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void LogMailSend.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            LogMailSend attached = LogMailSend.findLogMailSend(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void LogMailSend.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void LogMailSend.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public LogMailSend LogMailSend.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        LogMailSend merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager LogMailSend.entityManager() {
        EntityManager em = new LogMailSend().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long LogMailSend.countLogMailSends() {
        return entityManager().createQuery("SELECT COUNT(o) FROM LogMailSend o", Long.class).getSingleResult();
    }
    
    public static List<LogMailSend> LogMailSend.findAllLogMailSends() {
        return entityManager().createQuery("SELECT o FROM LogMailSend o", LogMailSend.class).getResultList();
    }
    
    public static LogMailSend LogMailSend.findLogMailSend(Long id) {
        if (id == null) return null;
        return entityManager().find(LogMailSend.class, id);
    }
    
    public static List<LogMailSend> LogMailSend.findLogMailSendEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM LogMailSend o", LogMailSend.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
