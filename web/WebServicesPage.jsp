<%-- 
    Document   : WebServicesPage
    Created on : 08 13, 16, 5:42:59 PM
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
                    <li >
                        <a href="showDiskUsage"><i class="fa fa-edit "></i>Disk Information</a>
                    </li>
                     <li>
                        <a href="showMemoryUsage"><i class="fa fa-edit "></i>Memory Usage Chart</a>
                    </li>
                    <li>
                        <a href="showCPUUsage"><i class="fa fa-edit "></i>CPU Usage Chart</a>
                    </li>
                    <li class="active-link">
                        <a href="showWebServices"><i class="fa fa-edit "></i>Web Services</a>
                    </li>
                     <li>
                        <a href="showDatabases"><i class="fa fa-edit "></i>Databases</a>
                    </li>
                </ul>
                            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Web Services</h2>   
                    </div>
                    
                </div>   
               
                 <!-- /. ROW  -->
                  <hr />
                   <div class="row text-center pad-top">
                       <c:forEach items="${webservices}" var="webService">
                           <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                            <div class="div-square">
                                 <c:choose> 
                                 <c:when test="${webService.status == 'Running'}">
                                  <td><span class="badge badge-success"><c:out value="${webService.status}"/></span></td>
                                  </c:when>
                                  <c:otherwise>
                                  <td><span class="badge badge-danger"><c:out value="${webService.status}"/></span></td>
                                  </c:otherwise>
                                  </c:choose>
                                 
                                 <div>
                                     <i class="fa fa-cogs fa-5x"></i>
                                 </div>
                                 <div>
                                     <h4><c:out value="${webService.serviceName}"/></h4>
                                 </div>
                                 <div>
                                     <a href="setServiceToStart?serviceName=<c:out value="${webService.serviceName}"/>">
                                          <button class="btn btn-success">START</button>
                                         
                                     </a>
                                     <a href="setServiceToStop?serviceName=<c:out value="${webService.serviceName}"/>">
                                           <button class="btn btn-danger">STOP</button>
                                     </a>
                                    
                                     
                                 </div>
                                  
                            </div>
                        </div>
                       </c:forEach>
                        
                  
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
