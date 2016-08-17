<%-- 
    Document   : ExportDatabasePage
    Created on : 08 13, 16, 10:24:49 PM
    Author     : migue
--%>

<%-- 
    Document   : DiskUsagePage
    Created on : 08 12, 16, 5:34:51 PM
    Author     : migue
--%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>CONTROL PANEL</title>
	<!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom-panel.css" rel="stylesheet" />
     <link href="assets/css/meter-design.css" rel="stylesheet" />
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
                    <a class="navbar-brand" id="nav-bar-title">System Control Panel</a>
                </div>
            </div>
        </div>
        <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                    <li>
                        <a href="toHome" ><i class="fa fa-desktop "></i>Control Panel Home</a>
                    </li>
                   <li>
                        <a href="showListofProcesses"><i class="fa fa-edit "></i>Process Table</a>
                    </li>
                    <li class="active-link">
                        <a href="showDiskUsage"><i class="fa fa-edit "></i>Disk Information</a>
                    </li>
                     <li>
                        <a href="showMemoryUsage"><i class="fa fa-edit "></i>Memory Usage Chart</a>
                    </li>
                      <li>
                        <a href="showCPUUsage"><i class="fa fa-edit "></i>CPU Usage Chart</a>
                    </li>
                    <li>
                        <a href="showWebServices"><i class="fa fa-edit "></i>Web Services</a>
                    </li>
                </ul>
                            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Export Database Credentials</h2>   
                    </div>
                    
                </div>   
               
                 <!-- /. ROW  -->
                  <hr />
                   <div class="row text-center pad-top">
                       <div class="panel-body">
                            <form id="create" action = "ExportServlet" class="form-horizontal" method="post">
                                        <div class ="form-group" >
                                        <label class="col-lg-2 col-sm-2 control-label">Username</label>
                                        <div class = col-lg-3>
                                            <input name = "username" type="text"  class="form-control" rows="1">
                                        </div>
                                     </div>
                                     <div class ="form-group" >
                                        <label class="col-lg-2 col-sm-2 control-label">Password</label>
                                        <div class = col-lg-3>
                                            <input name = "password" type="password"  class="form-control" rows="1">
                                        </div>
                                     </div>
                                     <div class ="form-group" >
                                        <label class="col-lg-2 col-sm-2 control-label">File Name</label>
                                        <div class = col-lg-3>
                                            <input name = "filename" type="text"  class="form-control" rows="1">
                                        </div>
                                     </div>
                                      <button type="submit" class="btn btn-default">Submit</button>
                            </form>
                       </div>
                    
                </div>
                 <!-- /. ROW  -->    
                 
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

