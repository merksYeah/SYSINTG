<%-- 
    Document   : index
    Created on : 08 12, 16, 12:35:29 PM
    Author     : migue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>CONTROL PANEL</title>
	<!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <link href="assets/css/meter-design.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
     
           
          
    <div id="wrapper">
         <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="adjust-nav">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    
                    
                </div>
				  <a class="navbar-brand" id="nav-bar-title">System Control Panel</a>
            </div>
        </div>
        <!-- /. NAV TOP  -->
        
        <div id="page-wrapper" >
            <div id="page-inner">
                           
                 
                            <div class="row text-center pad-top">
                 
                 
                  <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                      <div class="div-square">
                           <a href="showDiskUsage" >
                     <i class="fa fa-hdd-o fa-5x"></i>
                      <h4>See Disk Usage</h4>
                      </a>
                      </div>
                     
                     
                  </div>
                 
                  <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                      <div class="div-square">
                           <a href="showMemoryUsage" >
                           <i class="fa fa-tasks fa-5x"></i>
                           <h4>See RAM Usage</h4>
                      </a>
                      </div>
                     
                     
                  </div>
				  
                  <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                      <div class="div-square">
                           <a href="showCPUUsage" >
                        <i class="fa fa-desktop fa-5x"></i>
                      <h4>See CPU Usage </h4>
                      </a>
                      </div>
                     
                     
                  </div>
				   <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                      <div class="div-square">
                           <a href="showDatabases" >
                        <i class="fa fa-database fa-5x"></i>
                      <h4>Manage Databases</h4>
                      </a>
                      </div>
                     
                     
                  </div>
                  <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                      <div class="div-square">
                           <a href="showWebServices" >
                            <i class="fa fa-cogs fa-5x"></i>
                      <h4>Configure Services</h4>
                      </a>
                      </div>
                     
                     
                  </div>
				   <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                      <div class="div-square">
                           <a href="showListofProcesses" >
 <i class="fa fa-circle-o-notch fa-5x"></i>
                      <h4>Configure Processes</h4>
                      </a>
                      </div>
                     
                     
                  </div> 
              </div>
                 
                 
                
               
                
    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
   
          

     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
    
   
</body>
</html>

