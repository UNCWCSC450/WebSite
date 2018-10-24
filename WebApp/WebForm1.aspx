<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApp.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="StyleSheet.css"/>
    <title></title>
</head>
<body>

    <form id="form1" runat="server">

        <div class="homeImg">
            <h1>Name of Website</h1>
            <p>Brief description right here for our website</p>
        </div>

        <div class="nav-wrapper">
            <ul>
                <li><a href="#about">About</a></li>
                <li><a href="#contact">Contact</a></li>
                <li><a href="#news">News</a></li>
                <li><a href="#home">Home</a></li>
            </ul>
        </div>
        <div class="table-wrapper">
        <table >
            <tr>
                <th>
                    Step 1
                </th>
                <th>
                    Step 2
                </th>
                <th>
                    Step 3
                </th>
            </tr>
            <tr>
                <td class="tdInfo" >
                    Select classes
                </td>
                 <td class="tdInfo">
                     Select criteria
                </td>
                 <td class="tdInfo">
                     Search
                </td>
            </tr>
            <tr>
                <td >
                    <div class="selectCourse-wrapper">

                    <div class="SubjectInput">
                        <label>Select Subject</label>
                        <input /> 
                        <input /> 
                        <input /> 
                        <input /> 
                        <input /> 
                        <input /> 
                    </div>

                    <div class="CourseNumInput">
                        <label>Select Course</label>
                        <input /> 
                        <input /> 
                        <input /> 
                        <input /> 
                        <input /> 
                        <input /> 
                    </div>



                    </div>
                </td>
                 <td class="tdInfo">
                     Select criteria
                </td>
                 <td class="tdInfo">
                     <button>Search!</button>
                </td>
            </tr>


        </table>
            </div>
        
    </form>
</body>
</html>
