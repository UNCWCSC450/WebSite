<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApp.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>UNC-Scheduler</title>
    <meta http-equiv="X-UA-Compatible" content="IE=8"/>
</head>
<body>

    <link rel="stylesheet" href="https://bootswatch.com/4/cerulean/bootstrap.min.css" />
    <link href="StyleSheets/StyleSheet.css" rel="stylesheet" />
    
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
<%--    <script src="Scripts/Ajax.js"></script>--%>
    <script>
        // Course Objects to handle each selection 
var course1 = {
    subject: "",
    course: "",
    concatStr: ""
};
var course2 = {
    subject: "",
    course: "",
    concatStr: ""
};
var course3 = {
    subject: "",
    course: "",
    concatStr: ""
};
var course4 = {
    subject: "",
    course: "",
    concatStr: ""
};
var course5 = {
    subject: "",
    course: "",
    concatStr: ""
};
var course6 = {
    subject: "",
    course: "",
    concatStr: ""
};





function jsfunction(control) {

        switch (control.id) {

            case "myselect1":
                var subjectSelected = $(myselect1).val();
                course1.subject = "";
                course1.course = "";
                course1.concatStr = "";

                if (subjectSelected == "...") {
                    course1.subject = "";
                    course11.concatStr = "";

                    document.getElementById("myselect11").style.visibility = "hidden";
                    break;
                } else {
                    course1.subject = subjectSelected;
                    document.getElementById("myselect11").style.visibility = "visible";
                    break;
                }

                
            case "myselect2":
                var subjectSelected = $(myselect2).val();
                course2.subject = "";
                course2.course = "";
                course2.concatStr = "";

                if (subjectSelected == "...") {
                    course2.subject = "";
                    course12.concatStr = "";


                    document.getElementById("myselect22").style.visibility = "hidden";
                    break;
                } else {
                    course2.subject = subjectSelected;
                    document.getElementById("myselect22").style.visibility = "visible";
                    break;
                }

            case "myselect3":
                var subjectSelected = $(myselect3).val();
                course3.subject = "";
                course3.course = "";
                course3.concatStr = "";

                if (subjectSelected == "...") {
                    course3.subject = "";
                    course13.concatStr = "";

                    document.getElementById("myselect33").style.visibility = "hidden";
                    break;
                } else {
                    course3.subject = subjectSelected;
                    document.getElementById("myselect33").style.visibility = "visible";
                    break;
                }

            case "myselect4":
                var subjectSelected = $(myselect4).val()
                course4.subject = "";
                course4.course = "";
                course4.concatStr = "";




                if (subjectSelected == "...") {
                    document.getElementById("myselect44").style.visibility = "hidden";
                    break;
                } else {
                    course4.subject = subjectSelected;
                    document.getElementById("myselect44").style.visibility = "visible";
                    break;
                }

            case "myselect5":
                var subjectSelected = $(myselect5).val();
                course5.subject = "";
                course5.course = "";
                course5.concatStr = "";

                if (subjectSelected == "...") {
                    document.getElementById("myselect55").style.visibility = "hidden";
                    break;
                } else {
                    course5.subject = subjectSelected;
                    document.getElementById("myselect55").style.visibility = "visible";
                    break;
                }

            case "myselect6":
                var subjectSelected = $(myselect6).val();
                course6.subject = "";
                course6.course = "";
                course6.concatStr = "";

                if (subjectSelected == "...") {
                    document.getElementById("myselect66").style.visibility = "hidden";
                    break;
                } else {
                    course6.subject = subjectSelected;
                    document.getElementById("myselect66").style.visibility = "visible";
                    break;
                }



            case "myselect11":
                var courseSelected = $(myselect11).val()
                course1.course = courseSelected;
                course1.concatStr = course1.subject + course1.course;
                break;

            case "myselect22":
                var courseSelected = $(myselect22).val()
                course2.course = courseSelected;
                course2.concatStr = course2.subject + course2.course;
                break;

            case "myselect33":
                var courseSelected = $(myselect33).val()
                course3.course = courseSelected;
                course3.concatStr = course3.subject + course3.course;
                break;

            case "myselect44":
                var courseSelected = $(myselect44).val()
                course4.course = courseSelected;
                course4.concatStr = course4.subject + course4.course;
                break;

            case "myselect55":
                var courseSelected = $(myselect55).val()
                course5.course = courseSelected;
                course5.concatStr = course5.subject + course5.course;
                break;

            case "myselect66":
                var courseSelected = $(myselect66).val()
                course6.course = courseSelected;
                course6.concatStr = course6.subject + course6.course;
                break;
        }

}


function showCriteria(element) {
    var id = element.id;
    var checked = document.getElementById(id).checked;

    if (id == "wantPreferedDays")

        if (checked)
            document.getElementById("preferedDays").style.visibility = "visible";
        else
            document.getElementById("preferedDays").style.visibility = "hidden";

    if (id == "wantPreferedTimes")
        if (checked)
            document.getElementById("preferedTime").style.visibility = "visible";
        else
            document.getElementById("preferedTime").style.visibility = "hidden";
}


function searchFunction() {


    if (course1.concatStr.length < 6) {
        return false; // will need to throw an error message to the user that they must select at least four courses
    }

    if (course2.concatStr.length < 6) {
        return false; // will need to throw an error message to the user that they must select at least four courses and both criteria
    }

    if (course3.concatStr.length < 6) {
        return false; // will need to throw an error message to the user that they must select at least four courses
    }

    if (course4.concatStr.length < 6) {
        return false; // will need to throw an error message to the user that they must select at least four courses
    }

    document.getElementById("M").innerHTML = "Monday"
    document.getElementById("T").innerHTML = "Tuesday"
    document.getElementById("W").innerHTML = "Wednesday"
    document.getElementById("R").innerHTML = "Thursday"
    document.getElementById("F").innerHTML = "Friday"
    document.getElementById("S").innerHTML = "Saturday"
    document.getElementById("U").innerHTML = "Sunday"

    sendCourses();  
}

function parseCRNs(crnString) {
    crnArray = crnString.split(",");   


    // Iterate over the CRN's 
    for (var i = 0; i < crnArray.length; i++) {
        getTimes(crnArray[i]); // probably need to return more than times from this


    }

   
}








        //////////////////////// ALL AJAX CALLS ARE BEYOND THIS LINE /////////////////////////////////////////


        $(document).ready(function () {

            $('select').change(function () {


                //alert("works");
                var elementID = this.id


                if (elementID.length == 9) {
                    //alert(id);
                    var optionSelected = $('#' + elementID + ' option:selected').val();
                    //alert(data);
                    $.ajax({


                        type: 'POST',
                        url: "WebForm1.aspx/getCourses",
                        data: "{course:'" + optionSelected + "', select:'" + elementID + "' }",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            populateCourseSelect(data.d)
                            //alert(data.d);

                        },

                        failure: function (response) {
                            alert("broken")
                        }


                    });

                }
            })

            

            function populateCourseSelect(str) {

                var listOfCourse = str.substring(9);

                var tempSelect = str.substring(0, 9);
                var select = tempSelect + tempSelect[8]

                var num = "";

                $('#' + select + '')
                    .empty()
                    ;

                for (var i = 0; i < listOfCourse.length; i++) {

                    var tempNum = listOfCourse[i];

                    if (tempNum != ",") {
                        num += tempNum;

                    } else {
                        var x = document.getElementById("" + select + "");
                        var option = document.createElement("option");
                        option.text = num;
                        x.add(option);
                        num = "";
                    }

                }

            }


            $("#btn1").click(function (e) {


                var newItem = '<div class="item2">CSC 315</div>';
                newItem.id = "first";

                $("#testc").prepend(newItem);
                var item = document.getElementById("first").id;
                alert(item);
                $('#first').css('color', 'blue');
                e.preventDefault();

            });

            $(document).on('click', 'a[href^="#"]', function (event) {
                event.preventDefault();

                $('html, body').animate({
                    scrollTop: $($.attr(this, 'href')).offset().top - 40
                }, 500);
            });


        });


        function sendCourses() {
            if ($('#preferedOnline').prop('checked')) {
                var pref = "T";        
            } else {
                var pref = "F";
            }

            alert("Pref = " + pref);
            $.ajax({

                type: 'POST',
                url: "WebForm1.aspx/algorithm",
                data: "{course1:'" + course1.concatStr + "', course2:'" + course2.concatStr + "', course3:'" + course3.concatStr + "', course4:'" + course4.concatStr + "', course5:'" + course5.concatStr + "', course6:'" + course6.concatStr + "', prefOnline:'" + pref + "'}",                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    parseCRNs(data.d);
                    // may need to do something here
                },

                failure: function (response) {
                    alert("broken")
                }
            });
        }

        function getTimes(crn) {
            var times = "";
            $.ajax({

                type: 'POST',
                url: "WebForm1.aspx/getTimes",
                data: "{crn:'" + crn + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    // MUST CALL A DIFFERENT FUNCTION IN AJAX, CANT RETURN 
                    displayTime(crn, data.d);
                },

                failure: function (response) {
                    alert("broken")
                }

            });

            return times;
        }

        function displayTime(crn, time) {
            // here is where we need to use the jquery to actually display the time and information on the front end. 
            // will need the days as well 
            //alert("CRN" + crn);
            //alert("time" + time);
            var timeDay = time.split(",");


            var day = timeDay[0];
            var times = timeDay[1];

            if (day.length == 1 && day != "M" && day != "T" && day != "W" && day != "R" && day != "F" && day != "S" && day != "U") //Determines if class is online
                day = "ONLINE"

            if (day != "ONLINE") {
                var idCOUNTER = 0;
                var timeCOUNTER = 0;


                if (day.includes("*")) {
                    alert("DEBUGGING: " + crn);
                    var differentTimes = times.split("*")
                    for (var i = 0; i < day.length; i++) {
                        var tempDay = day.charAt(i);
                        alert("timeCOUNTER: " + timeCOUNTER)
                        alert("Current tempDay: " + tempDay)
                        var tempTime = differentTimes[timeCOUNTER]
                        tempcrn = crn + idCOUNTER
                        if (tempDay != "*") {
                            var newDiv = document.createElement("div");
                            newDiv.setAttribute("id", tempcrn);
                            newDiv.setAttribute("class", "item");
                            $('#' + tempDay).prepend(newDiv);
                            document.getElementById(tempcrn).innerHTML = crn

                            if (tempTime != "TBA") {
                                var x = tempTime.split("-")
                                var startTime = x[0];
                                var endTime = x[1];

                                startTime = timeConvertor(startTime);
                                endTime = timeConvertor(endTime);

                                var duration = endTime - startTime;
                                var helper = startTime;

                                //alert("1: " + startTime);
                                if (startTime >= 1300) {
                                    startTime = startTime - 1200
                                }
                                //alert("2: " + startTime);

                                if (startTime.length == 4)
                                    startTime = startTime.toString().substring(0, 2)
                                else
                                    startTime = startTime.toString().substring(0, 1)

                               var tempTop = 60;



                            //if (startTime != 8) {
                            var temp = helper.toString().substring(0, 2);
                            var temp2 = helper.toString().substring(2, 4);

                            temp2 = temp2 / 60;
                            temp2 = temp2 * 100;

                            temp = temp - 8;

                            tempTop = (100 * temp) + tempTop;
                            tempTop = tempTop + temp2;

                            //}



                                alert("Placing div at day:" + tempDay + "with Top: "+ tempTop)
                                $('#' + tempcrn).css('top', '' + tempTop + '');
                                idCOUNTER = idCOUNTER + 1;
                            }




                        } else {
                            alert("Increment timeCOUNTER");
                            timeCOUNTER = timeCOUNTER + 1
                        }
                    }
                } else {
                    alert("hit: " + crn);
                    for (var i = 0; i < day.length; i++) {
                        var tempDay = day.charAt(i);
                        tempcrn = crn + idCOUNTER

                        var newDiv = document.createElement("div");
                        newDiv.setAttribute("id", tempcrn);
                        newDiv.setAttribute("class", "item");
                        $('#' + tempDay).prepend(newDiv);
                        document.getElementById(tempcrn).innerHTML = crn

                        if (time != "TBA") {
                            var x = times.split("-")
                            var startTime = x[0];
                            var endTime = x[1];

                            startTime = timeConvertor(startTime);
                            endTime = timeConvertor(endTime);

                            var duration = endTime - startTime;
                            var helper = startTime;

                            //alert("1: " + startTime);
                            if (startTime >= 1300) {
                                startTime = startTime - 1200
                            }
                            //alert("2: " + startTime);

                            if (startTime.length == 4)
                                startTime = startTime.toString().substring(0, 2);
                            else
                                startTime = startTime.toString().substring(0, 1);

                            var tempTop = 60;



                            //if (startTime != 8) {
                            var temp = helper.toString().substring(0, 2);
                            var temp2 = helper.toString().substring(2, 4);

                            temp2 = temp2 / 60;
                            temp2 = temp2 * 100;

                            temp = temp - 8;

                            tempTop = (100 * temp) + tempTop;
                            tempTop = tempTop + temp2;

                            //}




                            $('#' + tempcrn).css('top', '' + tempTop + 'px');
                            $('#' + tempcrn).css('height', '' + duration + 'px');
                            idCOUNTER = idCOUNTER + 1;

                        }

                    }
                }
                //if (time != "TBA") {
                //    var x = times.split("-")
                //    var startTime = x[0];
                //    var endTime = x[1];

                //    startTime = timeConvertor(startTime);
                //    endTime = timeConvertor(endTime);

                //    var duration = endTime - startTime;

                //    alert("1: " + startTime);
                //    if (startTime >= 1300) {
                //        startTime = startTime - 1200
                //    }
                //    alert("2: " + startTime);

                //    if (startTime.length == 4)
                //        startTime = startTime.toString().substring(0, 2)
                //    else
                //        startTime = startTime.toString().substring(0, 1)


                //    alert(times);





                //    alert("Start point: " + startTime)
                //    alert("Duration: " + duration);

            }

            //var differentTimeDay = false;

            //if (times.includes("*")) {
            //    differentTimes = times.split("*")

            //    var index = 0;

            //    for (var i = 0; i < day.length; i++) {
            //        var currentTime = differentTimes[index];
            //        var startTime = currentTime.substring(0, 8);
            //        var endTime = currentTime.substring(10, 17);
            //        tempDay = day.charAt(i);
            //        tempcrn = crn + idCOUNTER
            //        if (tempDay != "*") {
            //            tempStart = startTime.chaAt(0)
            //            if (!(startTime.includes("00"))) {
            //               tempStart = tempStart + ".5"
            //            }
            //            tempEnd 


            //        } else {
            //            index = index + 1

            //        }

            //    }






            //}

            //alert(day);




        }

        function timeConvertor(time) {
            var pm = false;
            var min = time.substring(3, 5);
            if (time.includes("pm"))
                pm = true

            //if (time.includes("00"))
            //    min = "00"
            //else
            //    min = "30"


            if (pm && !(time.includes("12"))) {
                var hour = 12 + parseInt(time.substring(0, 2), 10)

            } else {
                var hour = time.substring(0, 2)
            }

            time = hour.toString() + min.toString();
            return time
        }



    </script>

    <style type="text/css">
        .schedule-wrapper {
            margin-left: 50px;
            height:100%;
            display: flex;
        }

.time {
    /*margin-top: 50px;*/
    height:50px;
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
                        <a class="nav-link" id="scheduleLink" href="#main">Schedule</a>
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
                <button id="learnMoreBtn" runat="server" onserverclick="learnMoreBtn_Click">Learn More</button>

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
                            <p style="margin-right:0">Consider Online</p>
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





                <div class="schedule-wrapper" >
                    <div class="timeGroup">
    <%--                    <div class="time"></div>--%>
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

                    <div class="dayGroup" id="M">
                        Monday
            <!--<a class="item" href="#">CSC 450</a>-->
                        <div class="item" style="top:260px; height:200px;">CSC 450</div>

 
                    </div>
                    <div class="dayGroup" id="T">
                        Tuesday
                        <div class="item">CSC 450</div>
    
                    </div>
                    <div class="dayGroup" id="W">
                        Wednesday


                    </div>
                    <div class="dayGroup" id="R">Thursday</div>
                    <div class="dayGroup" id ="F">Friday</div>
                    <div class="dayGroup" id ="S">Saturday</div>
                    <div class="dayGroup" id="U">Sunday</div>

                </div>



            </div>

        </div>


<%--        <div class="list-group">
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
