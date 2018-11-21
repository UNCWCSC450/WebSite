<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApp.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>UNC-Scheduler</title>
</head>
<body>

    <link rel="stylesheet" href="https://bootswatch.com/4/cerulean/bootstrap.min.css" />
    <link href="StyleSheets/StyleSheet.css" rel="stylesheet" />
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
    <script src="Scripts/Ajax.js"></script>
    <script src="Scripts/JavaScript.js"></script>

    <script src="Scripts/CodyHouse.js"></script>
    

    <form id="form1" runat="server">

        <nav class="navbar navbar-expand-lg navbar-dark bg-primary" style="position: sticky; top: 0; z-index: 2;">
            <a class="navbar-brand" href="#">UNC-Scheduler</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarColor01">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Schedule</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">About</a>
                    </li>
                </ul>

            </div>
        </nav>

        <div class="jumbotron">
            <h1 class="display-3">HELLO STUDENT</h1>
            <p class="lead">College is stressful enough, let us make it easier!</p>
            <hr class="my-4" />
            <p>Click below to learn how we did it!</p>
            <p class="lead">
                <%--<a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>--%>
                <button id="learnMoreBtn"  onclick="changeMainDiv(this);return false">Learn More</button>

            </p>
        </div>

        <div id="main" class="main-wrapper" style="display: flex;">


            <div class="card text-white bg-primary mb-3" style="max-width: 20rem; height: 1000px; z-index: 0; margin: 15px; width: 500px">
                <div class="card-header">Select Courses</div>

                <div class="card-body">

                    <div id="courseSelection" style="display: flex; width: 100%;  border-bottom:double"> 
                        <div style="display: grid; width: 30%; margin: 5px">
                            <h5>Subject</h5>
<%--                            <div style="position:relative">
                            <input id="myInput" type="text" name="myCountry" placeholder="Subject" style="width:100%"/>
                            </div>--%>
                            <select id="myselect1" runat="server" onchange="jsfunction(this)" size="2"></select>
                            <select id="myselect2" runat="server" onchange="jsfunction(this)" size="2"></select>
                            <select id="myselect3" runat="server" onchange="jsfunction(this)" size="2"></select>
                            <select id="myselect4" runat="server" onchange="jsfunction(this)" size="2"></select>
                            <select id="myselect5" runat="server" onchange="jsfunction(this)" size="2"></select>
                            <select id="myselect6" runat="server" onchange="jsfunction(this)" size="2"></select>
                        </div>
                        <div style="display: grid; width: 30%; margin: 5px">
                            <h5>Course</h5>
                            <select id="myselect11" name="myselect11" runat="server" class="selectCourse" size="2"></select>
                            <select id="myselect22" name="myselect22" runat="server" class="selectCourse" size="2"></select>
                            <select id="myselect33" name="myselect33" runat="server" class="selectCourse" size="2"></select>
                            <select id="myselect44" name="myselect44" runat="server" class="selectCourse" size="2"></select>
                            <select id="myselect55" name="myselect55" runat="server" class="selectCourse" size="2"></select>
                            <select id="myselect66" name="myselect66" runat="server" class="selectCourse" size="2"></select>
                        </div>
                        <div style="display: grid; width: 30%; margin: 5px">
                            <h5>Section</h5>
                            <select class="selectCourse"></select>
                            <select class="selectCourse"></select>
                            <select class="selectCourse"></select>
                            <select class="selectCourse"></select>
                            <select class="selectCourse"></select>
                            <select class="selectCourse"></select>
                        </div>
                    </div>
                    <div id="courseCriteria" style="display:block; width: 100%; border-bottom: double; margin-top:5px">


                        <div style="display:inline-flex">
                            <p style="margin-right:0">Prefered Online</p>
                            <input id="preferedOnline" style="text-align:center; vertical-align:middle; margin-left:10px; margin-top:5px" type="checkbox" checked="checked" />
                        </div>

                        <div style="display: inline-flex; width:100%; border-top:double;">
                            <p style="margin-right: 0">Want Prefered Days</p>
                            <input id="wantPreferedDays" style="text-align: center; vertical-align: middle; margin-left: 10px; margin-top: 5px" type="checkbox" onchange="showCriteria(this)"/>
                        </div>


                        <div id="preferedDays" class="preferedDays-wrapper" style="width:100%; margin-bottom:5px; visibility:hidden;">
                            <table style="width:100%">
                                <tr>
                                    <td style="text-align:center; width:1%">Mon</td>
                                    <td style="text-align:center; width:15%">Tues</td>
                                    <td style="text-align:center; width:15%">Wed</td>
                                    <td style="text-align:center; width:15%">Th</td>
                                    <td style="text-align:center; width:15%">Fri</td>
                                    <td style="text-align:center; width:15%">Sat</td>
                                    <td style="text-align:center; width:15%"">Sun</td>
                                </tr>
                                <tr>
                                    <td style="text-align:center"><input type="checkbox" /></td>
                                    <td style="text-align:center"><input type="checkbox" /></td>
                                    <td style="text-align:center"><input type="checkbox" /></td>
                                    <td style="text-align:center"><input type="checkbox" /></td>
                                    <td style="text-align:center"><input type="checkbox" /></td>
                                    <td style="text-align:center"><input type="checkbox" /></td>
                                    <td style="text-align:center"><input type="checkbox" /></td>
                                </tr>
                            </table>
                        </div>

                        <div style="display:inline-flex; width:100%; border-top:double">
                            <p style="margin-right: 0">Want Prefered Times</p>
                            <input id="wantPreferedTimes" style="text-align: center; vertical-align: middle; margin-left: 10px; margin-top: 5px" type="checkbox" onchange="showCriteria(this)" />
                        </div>


                        <div id="preferedTime" style="margin-top:5px; margin-bottom:5px; visibility:hidden" >
                            <table style="width:100%">

                                <tr>
                                    <td></td>
                                    <td>8</td>
                                    <td>9</td>
                                    <td>10</td>
                                    <td>11</td>
                                    <td>12</td>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>3</td>
                                    <td>4</td>
                                    <td>5</td>
                                    <td>6</td>
                                    <td>7</td>
                                    <td>8</td>
                                </tr>
                                <tr style="height:50px;">
                                    <td >MWF</td>
                                    <td colspan="12"><input type="range" style="width:100%"/></td>
                                </tr>
                                <tr>
                                    <td>TR</td>
                                    <td colspan="12"><input type="range" style="width:100%"/></td>
                                </tr>
                            </table>
<%--                            <input type="range" style="width:100%"/>
                            <input type="range" />--%>
                        </div>



                    </div>

                    <div id="searchBtn" style="margin-top:15px; height:100%;" >
                        <input type="button" style="width:100%;"" value="Search"/>
                    </div>

                </div>
            </div>

                <link href="StyleSheets/CodyHouse.css" rel="stylesheet" />
            <div class="schedule" >
            <%--<table style="height: 100%; width: 100%; visibility:hidden;" >
                    <tr>
                        <th></th>
                        <td class="tableDays">Monday</td>
                        <td class="tableDays">Tuesday</td>
                        <td class="tableDays">Wednesday</td>
                        <td class="tableDays">Thursday</td>
                        <td class="tableDays">Friday</td>
                        <td class="tableDays">Saturday</td>
                        <td class="tableDays">Sunday</td>
                    </tr>
                    <tr>
                        <td class="tableTimeStamp">8</td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                    </tr>
                    <tr>
                        <td class="tableTimeStamp">9</td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                    </tr>
                    <tr>
                        <td class="tableTimeStamp">10</td>
                        <td class="tableCells" style="background-color:orange"><p>CSC434</p></td>
                        <td class="tableCells"></td>
                        <td class="tableCells" style="background-color:orange"><p>CSC434</p></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                    </tr>
                    <tr>
                        <td class="tableTimeStamp">11</td>
                        <td class="tableCells" style="background: -webkit-linear-gradient(bottom, white 75%, orange 25%);"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells" style="background: -webkit-linear-gradient(bottom, white 75%, orange 25%);"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                    </tr>
                    <tr>
                        <td class="tableTimeStamp">12</td>
                        <td class="tableCells" style="background: -webkit-linear-gradient(top, red 90%, white 10%);"><p>CSC450</p></td>
                        <td class="tableCells"></td>
                        <td class="tableCells" style="background: -webkit-linear-gradient(top, red 90%, white 10%);"><p>CSC450</p></td>
                        <td class="tableCells"></td>
                        <td class="tableCells" style="background: -webkit-linear-gradient(top, red 90%, white 10%);"><p>CSC450</p></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                    </tr>
                    <tr>
                        <td class="tableTimeStamp">1</td>
                        <td class="tableCells" ></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                    </tr>
                    <tr>
                        <td class="tableTimeStamp">2</td>
                        <td class="tableCells"></td>
                        <td class="tableCells" style="background-color:green"><p>CSC455</p></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"style="background-color:green"><p>CSC455</p></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                    </tr>
                    <tr>
                        <td class="tableTimeStamp">3</td>
                        <td class="tableCells"></td>
                        <td class="tableCells" style="background: -webkit-linear-gradient(bottom, white 75%, green 25%);"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells" style="background: -webkit-linear-gradient(bottom, white 75%, green 25%);"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                    </tr>
                    <tr>
                        <td class="tableTimeStamp">4</td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                    </tr>
                    <tr>
                        <td class="tableTimeStamp">5</td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                    </tr>
                    <tr>
                        <td class="tableTimeStamp">6</td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                    </tr>
                    <tr>
                        <td class="tableTimeStamp">7</td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                    </tr>
                    <tr>
                        <td class="tableTimeStamp">8</td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                        <td class="tableCells"></td>
                    </tr>
                </table>--%>



                
                <div class="cd-schedule loading">
    <div class="timeline">
        <ul>
            <li><span>08:00</span></li>
            <li><span>08:30</span></li>
            <li><span>09:00</span></li>
            <li><span>09:30</span></li>
            <li><span>10:00</span></li>
            <li><span>10:30</span></li>
            <li><span>11:00</span></li>
            <li><span>11:30</span></li>
            <li><span>12:00</span></li>
            <li><span>12:30</span></li>
            <li><span>13:00</span></li>
            <li><span>13:30</span></li>
            <li><span>14:00</span></li>
            <li><span>14:30</span></li>
            <li><span>15:00</span></li>
            <li><span>15:30</span></li>
            <li><span>16:00</span></li>
            <li><span>16:30</span></li>
            <li><span>17:00</span></li>
            <li><span>17:30</span></li>
            <li><span>18:00</span></li>
        </ul>
    </div>
    <!-- .timeline -->

    <div class="events">
        <ul>
            <li class="events-group">
                <div class="top-info"><span>Monday</span></div>

            </li>

            <li class="events-group">
                <div class="top-info"><span>Tuesday</span></div>

                <ul>
                    <li class="single-event" data-start="9:30" data-end="10:45" data-content="event-rowing-workout" data-event="event-4">
                        <a href="#0">
                            <em class="event-name">CSC 450</em>
                        </a>
                    </li>

                    <li class="single-event" data-start="12:30" data-end="13:45" data-content="event-restorative-yoga" data-event="event-2">
                        <a href="#0">
                            <em class="event-name">CSC 315</em>
                        </a>
                    </li>

                    <li class="single-event" data-start="14:00" data-end="15:15" data-content="event-rowing-workout" data-event="event-3">
                        <a href="#0">
                            <em class="event-name">CSC 380</em>
                        </a>
                    </li>

                </ul>
            </li>

            <li class="events-group">
                <div class="top-info"><span>Wednesday</span></div>

                <ul>

                </ul>
            </li>

            <li class="events-group">
                <div class="top-info"><span>Thursday</span></div>

                <ul>
                            <li class="single-event" data-start="9:30" data-end="10:45" data-content="event-rowing-workout" data-event="event-1">
                        <a href="#0">
                            <em class="event-name">CSC 450</em>
                        </a>
                    </li>

                    <li class="single-event" data-start="12:30" data-end="13:45" data-content="event-restorative-yoga" data-event="event-2">
                        <a href="#0">
                            <em class="event-name">CSC 315</em>
                        </a>
                    </li>

                    <li class="single-event" data-start="14:00" data-end="15:15" data-content="event-rowing-workout" data-event="event-3">
                        <a href="#0">
                            <em class="event-name">CSC 380</em>
                        </a>
                    </li>

                </ul>
            </li>

            <li class="events-group">
                <div class="top-info"><span>Friday</span></div>

                <ul>

                </ul>
            </li>
        </ul>
    </div>

    <div class="event-modal">
        <header class="header">
            <div class="content">
                <span class="event-date"></span>
                <h3 class="event-name"></h3>
            </div>

            <div class="header-bg"></div>
        </header>

        <div class="body">
            <div class="event-info"></div>
            <div class="body-bg"></div>
        </div>

        <a href="#0" class="close">Close</a>
    </div>

    <div class="cover-layer"></div>
                </div>
                <!-- .cd-schedule -->



            </div>

        </div>


   <%--     <div class="list-group">
  <a href="#" class="list-group-item list-group-item-action flex-column align-items-start active">
    <div class="d-flex w-100 justify-content-between">
      <h5 class="mb-1">List group item heading</h5>
      <small>3 days ago</small>
    </div>
    <p class="mb-1">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
    <small>Donec id elit non mi porta.</small>
  </a>
  <a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
    <div class="d-flex w-100 justify-content-between">
      <h5 class="mb-1">List group item heading</h5>
      <small class="text-muted">3 days ago</small>
    </div>
    <p class="mb-1">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
    <small class="text-muted">Donec id elit non mi porta.</small>
  </a>
</div>--%>

    </form>

</body>
</html>
