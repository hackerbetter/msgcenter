// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ruyicai.lottery.domain;

import com.ruyicai.lottery.domain.CaseLot;
import com.ruyicai.lottery.domain.Tlot;
import com.ruyicai.lottery.domain.Torder;
import com.ruyicai.lottery.domain.Tuserinfo;
import java.util.List;

privileged aspect CaselotDTO_Roo_JavaBean {
    
    public Tuserinfo CaselotDTO.getStarter() {
        return this.starter;
    }
    
    public void CaselotDTO.setStarter(Tuserinfo starter) {
        this.starter = starter;
    }
    
    public CaseLot CaselotDTO.getCaseLot() {
        return this.caseLot;
    }
    
    public void CaselotDTO.setCaseLot(CaseLot caseLot) {
        this.caseLot = caseLot;
    }
    
    public Torder CaselotDTO.getTorder() {
        return this.torder;
    }
    
    public void CaselotDTO.setTorder(Torder torder) {
        this.torder = torder;
    }
    
    public List<Tlot> CaselotDTO.getTlots() {
        return this.tlots;
    }
    
    public void CaselotDTO.setTlots(List<Tlot> tlots) {
        this.tlots = tlots;
    }
    
}
