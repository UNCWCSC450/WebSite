<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApp.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://bootswatch.com/4/cerulean/bootstrap.min.css"/>
    <link href="StyleSheets/StyleSheet.css" rel="stylesheet" />

    <script src="Scripts/Ajax.js"></script>
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
    <script src="Scripts/JavaScript.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('select').change(function () {
                //alert("works");
                var elementID = this.id
                //alert(id);
                var optionSelected = $('#'+elementID+' option:selected').val();
                //alert(data);
                $.ajax({

                    
                    type: 'POST',
                    url: "WebForm1.aspx/getCourses",                    
                    data: "{course:'" + optionSelected + "', select:'"+elementID+"' }",
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

            })

            function populateCourseSelect(str) {

                var listOfCourse = str.substring(9);
                
                var tempSelect = str.substring(0, 9);
                var select = tempSelect + tempSelect[8]

                var num = "";
                
                $('#'+select+'')
                    .empty()
                    ;

                for (var i = 0; i < listOfCourse.length; i++) {

                    var tempNum = listOfCourse[i];

                    if (tempNum != ",") {
                        num += tempNum;

                    } else {
                        var x = document.getElementById(""+select+"");
                        var option = document.createElement("option");
                        option.text = num;
                        x.add(option);
                        num = "";
                    }

                }

            }

        });
    </script>
    <%--keyname: $('#myselect1 option:selected').val()--%> 



   

    <title>UNC-Scheduler</title>
</head>
<body>

    <form id="form1" runat="server">

        <nav class="navbar navbar-expand-lg navbar-dark bg-primary" style="position: sticky; top: 0; z-index: 1;">
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
                <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>
            </p>
        </div>

        <div class="main-wrapper" style="display: flex; height: 100%;">

            <div class="card text-white bg-primary mb-3" style="max-width: 20rem; height: 750px; z-index: 0; margin: 15px; width: 25%">
                <div class="card-header">Select Courses</div>

                <div class="card-body">

                    <div style="display: flex; width: 100%;  border-bottom:double">
                        <div style="display: grid; width: 30%; margin: 5px">
                            <h5>Subject</h5>
                            <select id="myselect1" runat="server" onchange="jsfunction(this)"></select>
                            <select id="myselect2" runat="server" onchange="jsfunction(this)"></select>
                            <select id="myselect3" runat="server" onchange="jsfunction(this)"></select>
                            <select id="myselect4" runat="server" onchange="jsfunction(this)"></select>
                            <select id="myselect5" runat="server" onchange="jsfunction(this)"></select>
                            <select id="myselect6" runat="server" onchange="jsfunction(this)"></select>
                        </div>
                        <div style="display: grid; width: 30%; margin: 5px">
                            <h5>Course</h5>
                            <select id="myselect11" name="myselect11" runat="server" class="selectCourse"></select>
                            <select id="myselect22" name="myselect22" runat="server" class="selectCourse"></select>
                            <select id="myselect33" name="myselect33" runat="server" class="selectCourse"></select>
                            <select class="selectCourse" id="myselect44" name="myselect44"></select>
                            <select class="selectCourse" id="myselect55" name="myselect55"></select>
                            <select class="selectCourse" id="myselect66" name="myselect66"></select>
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
                </div>
            </div>


            <div class="schedule">
                <table style="height: 100%; width: 100%">
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
                </table>

            </div>

        </div>

        <div class="list-group">
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
</div>

    </form>

</body>
</html>
