<%-- 
    Document   : MemoryUsagePage.jsp
    Created on : 08 12, 16, 8:41:32 PM
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
                    <li>
                        <a href="showDiskUsage"><i class="fa fa-edit "></i>Disk Information</a>
                    </li>
                     <li class="active-link">
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
                     <h3>Memory Usage</h3>   
                    </div>
                    
                </div>   
               
                 <!-- /. ROW  -->
                  <hr />
                  <div class="row text-center pad-top">
                      <h1 id="ramHeader"></h1>
                  </div>
                  
                   <div id="chartContainer" style="width: 100%; height: 300px;"></div>
                 <!-- /. ROW  -->    
                 
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
          

     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-3.1.0.min.js"></script>
    <script src="assets/js/canvasjs.min.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
    
      <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
    <script type="text/javascript">
	$(document).ready(function () {
             var dps = [];
              var chart = new CanvasJS.Chart("chartContainer",{
			title :{
				text: "Memory Utilization"
			},
                        axisX:{
                            title: "Time"
                        },
                        axisY:{
                            title: "Memory Usage"
                        },
			data: [{
				type: "line",
				dataPoints: dps 
			}]
		});
                chart.render();
                setInterval(reloadPage,1000);
            function reloadPage(){
              $.getJSON("loadMemoryUsageChart", function(data) {
                  var usedMem = $.trim(data.y).substring(0,4);
                  var totalMem = $.trim(data.label).substring(0,4);
                  var d = new Date();
                  $("#ramHeader").text( usedMem + "GB out of " + totalMem + "GB");
                  dps.push({x:d,y:data.y});
                  chart.render();
                });
                
            };
        });
    </script>
</body>
</html>

