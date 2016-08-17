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
public class logicalDisk {

    public String getDiskName() {
        return diskName;
    }

    public void setDiskName(String diskName) {
        this.diskName = diskName;
    }

    public int getTotalDiskSpace() {
        return totalDiskSpace;
    }

    public void setTotalDiskSpace(int totalDiskSpace) {
        this.totalDiskSpace = totalDiskSpace;
    }

    public int getFreeDiskSpace() {
        return freeDiskSpace;
    }

    public void setFreeDiskSpace(int freeDiskSpace) {
        this.freeDiskSpace = freeDiskSpace;
    }
    private String diskName;
    private int totalDiskSpace;
    private int freeDiskSpace;
    
}
