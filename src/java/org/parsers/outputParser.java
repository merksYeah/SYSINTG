/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.parsers;

import java.util.ArrayList;
import org.objects.computerProcess;
import org.objects.logicalDisk;
import org.objects.logicalProcessor;
import org.objects.webService;

/**
 *
 * @author migue
 */
public class outputParser {
    
    public ArrayList<webService> parseServiceOutput(String processOut){
        ArrayList<webService> webservices = new ArrayList<>();
        String[] output = processOut.split("\\r?\\n");
        for(int i = 3; i < output.length; i++)
        {
           
            String[] object = output[i].split("\\s+");
            webService service = new webService();
            System.out.println(object[1]);
            service.setStatus(object[0]);
            service.setServiceName(object[1]);
            webservices.add(service);
            
        }
        
        return webservices;
    }
    
    public ArrayList<logicalProcessor> parseCPUOutput(String processOut, int numCores){
        ArrayList<logicalProcessor> processors = new ArrayList<>();
        String[] output = processOut.split("\\r?\\n");
        int counter = 0;
        for(String myValue : output){
            if(isNumeric(myValue) && counter != numCores){
                counter++;
                logicalProcessor processor = new logicalProcessor();
                processor.setCpuCoreID(processors.size() + 1);
                processor.setCpuUtilization(Double.parseDouble(myValue));
                processors.add(processor);
            }
        }
        
        return processors;
    }
    
    public ArrayList<computerProcess> parseProcessOutput(String processOut){
        ArrayList<computerProcess> computerProcesses = new ArrayList<>();
        String [] output = processOut.split("\\r?\\n");
        for(int i = 3; i < output.length - 1; i++){
            computerProcess process = new computerProcess();
            String[] processObject = output[i].split("\\s+");
            if(processObject.length == 9){
               if (isNumeric(processObject[7])){
                process.setHandles(Integer.parseInt(processObject[1]));
                process.setNpm(Integer.parseInt(processObject[2]));
                process.setPm(Integer.parseInt(processObject[3]));
                process.setWs(Integer.parseInt(processObject[4]));
                if(processObject[5].equals("")){
                    process.setCpu(0);
                }
                else{
                     process.setCpu(Double.parseDouble(processObject[5].replaceAll(",","")));
                }
               
                process.setId(Integer.parseInt(processObject[6]));
                process.setSi(Integer.parseInt(processObject[7]));
                process.setProcessName(processObject[8]);
               }
               else
               {
                process.setHandles(Integer.parseInt(processObject[1]));
                process.setNpm(Integer.parseInt(processObject[2]));
                process.setPm(Integer.parseInt(processObject[3]));
                process.setWs(Integer.parseInt(processObject[4]));
                process.setCpu(0);
                process.setId(Integer.parseInt(processObject[5]));
                process.setSi(Integer.parseInt(processObject[6]));
                process.setProcessName(processObject[7] + " " + processObject[8]);  
               }
                
            }
            else{
                
                process.setHandles(Integer.parseInt(processObject[1]));
                process.setNpm(Integer.parseInt(processObject[2]));
                process.setPm(Integer.parseInt(processObject[3]));
                process.setWs(Integer.parseInt(processObject[4]));
                process.setCpu(0);
                process.setId(Integer.parseInt(processObject[5]));
                process.setSi(Integer.parseInt(processObject[6]));
                process.setProcessName(processObject[7]);
            }
           
           
            computerProcesses.add(process);
            
        }
        
        return computerProcesses;
    }
    
   public ArrayList<logicalDisk> parseDiskOutput(String diskOut){
       ArrayList<logicalDisk> logicalDisks = new ArrayList<>();
       String output[] = diskOut.split("\\r?\\n");
       //System.out.println(output.length);
       for(int i=0; i < output.length; i++){
           logicalDisk disk = new logicalDisk();
           if(i % 3 == 0 || i == 0 ){
               //System.out.println(output.length);
               disk.setDiskName(output[i]);
               double one = Double.parseDouble(output[i+1]);
               double two = Double.parseDouble(output[i+2]);
               disk.setTotalDiskSpace((int) one);
               disk.setFreeDiskSpace((int) two);
               logicalDisks.add(disk);
           }
       }
       
       return logicalDisks;
   }
    
   public static boolean isNumeric(String str)  
    {  
      try  
      {     
        double d = Double.parseDouble(str);  
      }  
      catch(NumberFormatException nfe)  
      {  
        return false;  
      }  
       return true;  
    }
    
}
