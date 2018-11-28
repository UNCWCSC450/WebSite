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
<%--    <script src="Scripts/Ajax.js"></script>--%>
    <script src="Scripts/CodyHouse.js"></script>
    <script src="Scripts/JavaScript.js"></script>
    <style type="text/css">
        .schedule-wrapper {
    margin-left: 50px;
    display: flex;
}

.time {
    margin-top: 50px;
    vertical-align: middle;
}

.dayGroup {
    position: relative;
    margin-left: 40px;
    width: 150px;
    text-align: center;
    font-weight: bold;
    font: inherit;
    font-size: 2.0rem;
    /*background-color:red*/
}

.item {
    /*margin-top: 175px;*/
    top: 120px;
    left: 0px;
    position: absolute;
    padding-top: 10px;
    display: inline-block;
    vertical-align: middle;
    height: 100px;
    width: 100%;
    border: 1px solid;
    border-color: black;
    box-shadow: 5px 5px 20px #888888;
    background-color: #d181ff;
    border-radius: 20px;
    font-weight: bold;
    font: inherit;
    font-size: 1.4rem;
    color: white;
}

    .item:hover {
        opacity: .9;
        cursor: pointer;
    }

.item2 {
    top: 300px;
    left: 0px;
    position: absolute;
    padding-top: 10px;
    display: inline-block;
    vertical-align: middle;
    height: 100px;
    width: 100%;
    border: 1px solid;
    border-color: black;
    box-shadow: 5px 5px 20px #888888;
    background-color: orangered;
    border-radius: 20px;
    font-weight: bold;
    font: inherit;
    font-size: 1.4rem;
    color: white;
}

    .item2:hover {
        opacity: .9;
        cursor: pointer;
    }

.line {
    position: absolute;
    height: 1px;
    margin-top: -10px;
    content: "";
    width: 70%;
    display: block;
    border-bottom: double;
    left: 475px;
    opacity: .25;
    z-index: -1;
}
    </style>


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
                            <select id="myselect11" name="myselect11" runat="server" class="selectCourse" onchange="jsfunction(this)" size="2"></select>
                            <select id="myselect22" name="myselect22" runat="server" class="selectCourse" onchange="jsfunction(this)" size="2"></select>
                            <select id="myselect33" name="myselect33" runat="server" class="selectCourse" onchange="jsfunction(this)" size="2"></select>
                            <select id="myselect44" name="myselect44" runat="server" class="selectCourse" onchange="jsfunction(this)" size="2"></select>
                            <select id="myselect55" name="myselect55" runat="server" class="selectCourse" onchange="jsfunction(this)" size="2"></select>
                            <select id="myselect66" name="myselect66" runat="server" class="selectCourse" onchange="jsfunction(this)" size="2"></select>
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

                    <div style="margin-top:15px; height:100%;" >
                        <button id="searchBtn" style="width:100%;" onclick="searchFunction(); return false;">Search</button>
                    </div>


<%--                   <input type="button" id="searchBtn" style="width:100%;" onchange="searchFunction()" value="Search"/>--%>




                </div>
            </div>

            <div class="schedule" >





                <div class="schedule-wrapper">
                    <div class="timeGroup">
                        <div class="time"></div>
                        <div class="time">8:00<span class="line"></span></div>
                        <div class="time">9:00<span class="line"></span></div>
                        <div class="time">10:00<span class="line"></span></div>
                        <div class="time">11:00<span class="line"></span></div>
                        <div class="time">12:00<span class="line"></span></div>
                        <div class="time">1:00<span class="line"></span></div>
                        <div class="time">2:00<span class="line"></span></div>
                        <div class="time">3:00<span class="line"></span></div>
                        <div class="time">4:00<span class="line"></span></div>
                        <div class="time">5:00<span class="line"></span></div>
                        <div class="time">6:00<span class="line"></span></div>
                        <div class="time">7:00<span class="line"></span></div>
                        <div class="time">8:00<span class="line"></span></div>
                    </div>

                    <div class="dayGroup">
                        Monday
            <!--<a class="item" href="#">CSC 450</a>-->
                        <div class="item">CSC 450</div>
                        <div class="item2">CSC 315</div>
                    </div>
                    <div class="dayGroup">
                        Tuesday
                        <div class="item2">CSC 315</div>
                    </div>
                    <div class="dayGroup">
                        Wednesday
            <div class="item">CSC 450</div>
                        <div class="item2">CSC 315</div>
                    </div>
                    <div class="dayGroup">Thursday</div>
                    <div class="dayGroup">Friday</div>
                    <div class="dayGroup">Saturday</div>
                    <div class="dayGroup">Sunday</div>

                </div>



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
