/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.objects;

/**
 *
 * @author migue
 */
public class logicalProcessor {

    public int getCpuCoreID() {
        return cpuCoreID;
    }

    public void setCpuCoreID(int cpuCoreID) {
        this.cpuCoreID = cpuCoreID;
    }

    public double getCpuUtilization() {
        return cpuUtilization;
    }

    public void setCpuUtilization(double cpuUtilization) {
        this.cpuUtilization = cpuUtilization;
    }
    
    private int cpuCoreID;
    private double cpuUtilization;
    
}
