<%-- 
    Document   : ProcesessPage
    Created on : 08 12, 16, 12:39:50 PM
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
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" type="text/css" href="assets/DataTables-1.10.6/media/css/jquery.dataTables.min.css">
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
                   
                    <li class="active-link">
                        <a href="showListofProcesses"><i class="fa fa-edit "></i>Process Table</a>
                    </li>
                     <li>
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
                     <h2>List of Processes</h2>   
                    </div>
                    
                </div>              
                 <!-- /. ROW  -->
                  <hr />
              
                 <!-- /. ROW  -->    
                 <div class="row">
                      <div class="col-lg-12 col-md-12">
                        <table id = "orders" class="table table-striped table-bordered table-hover">
                            <thead>
                                    <tr>
                                        <th>Handles</th>
                                        <th>NPM</th>
                                        <th>PM</th>
                                        <th>WS</th>
                                        <th>CPU</th>
                                        <th>ID</th>
                                        <th>SI</th>
                                        <th>Process Name</th>
                                    </tr>
                                </thead>
                            <tbody>
                                   <c:forEach items="${processes}" var="computerProcess">
                                   <tr>
                                          <td><c:out value="${computerProcess.handles}"/></td>
                                          <td><c:out value="${computerProcess.npm}"/></td>
                                          <td><c:out value="${computerProcess.pm}"/></td>
                                          <td><c:out value="${computerProcess.ws}"/></td>
                                          <td><c:out value="${computerProcess.cpu}"/></td>
                                          <td><c:out value="${computerProcess.id}"/></td>
                                           <td><c:out value="${computerProcess.si}"/></td>
                                            <td><c:out value="${computerProcess.processName}"/></td>
                                  </tr>
                                  </c:forEach>
                                  
                            
                              </tbody>
                        </table>
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
    <script src="assets/DataTables-1.10.6/media/js/jquery.dataTables.min.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
    <script>
            $(document).ready(function() {
                 var table = $('#orders').dataTable({
                     "order": [[ 7, "asc" ]]
                 });
            });
            setInterval(reloadPage,30000);
            function reloadPage(){
                 var table = $('#orders').dataTable();
                  table.fnClearTable();
                  table.fnDestroy();
                 $('#orders').dataTable( {
                  "order": [[ 6, "desc" ]],
        "ajax": {
            "url":"reloadProcesses",
            "dataSrc": ''
            
        },
        "columns": [
            { "data": "handles" },
            { "data": "npm" },
            { "data": "pm" },
            { "data": "ws" },
            { "data": "cpu" },
            { "data": "id" },
            { "data": "si" },
            { "data": "processName" }
            
        ]
    });
            };
    </script>
   
</body>
</html>

