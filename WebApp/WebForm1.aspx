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
                <li><a href="#About">About</a></li>
                <li><a href="#Schedule">Schedule</a></li>
                <li><a href="#Steps">Steps</a></li>
                <li><a href="#top">Home</a></li>
            </ul>
        </div>
        <div class="table-wrapper">
        <a name ="Steps">
        <table class="stepsTable">
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
                        <div style="text-align:center;">
                        <label>Select Subject</label>
                        </div>
                        <select class="selectClasses" id="myselect" runat="server">
                           
                        </select>
                        <select class="selectClasses">
                           
                        </select>
                        <select class="selectClasses">
                          
                        </select>
                        <select class="selectClasses">
                            
                        </select>
                        <select class="selectClasses">
                            
                        </select>
                        <select class="selectClasses">
                           
                        </select>
                       
                    </div>
                        
                    <div class="CourseNumInput">
                        <div style="text-align:center;">
                        <label>Select Course</label>
                    </div>
                        <select class="selectClasses">
                           
                        </select>
                        <select class="selectClasses">
                            
                        </select>
                        <select class="selectClasses">
                            
                        </select>
                        <select class="selectClasses">
                            
                        </select>
                        <select class="selectClasses">
                            
                        </select>
                        <select class="selectClasses">
                            
                        </select>
                    </div>

                    <div class="SectionInput">
                        <div style="text-align:center;">
                        <label>Select Section*</label>
                        </div>
                        <select class="selectClasses">
                           
                        </select>
                        <select class="selectClasses">
                            
                        </select>
                        <select class="selectClasses">
                            
                        </select>
                        <select class="selectClasses">
                            
                        </select>
                        <select class="selectClasses">
                            
                        </select>
                        <select class="selectClasses">
                            
                        </select>
                    </div>
                    </div>
                </td>
                 <td>
                     <div class="selectCriteria-wrapper">
                         <div class="onlinePreferDiv">
                         <label>Prefered Online:</label>
                          <select class="onlinePreferCheckBox">
                              <option>Yes</option>
                              <option>No</option>                         
                        </select>
                        </div>

                         <div class="timeOfDayDiv">
                             <label>Prefered Time of Class:</label>
                             <table class="timeOfDayTable">
                                 <tr>
                                     <td class="timeOfDaysTableTd">Morning</td>
                                     <td class="timeOfDaysTableTd">Noon</td>
                                     <td class="timeOfDaysTableTd">Evening</td>
                                 </tr>
                                 <tr>
                                     <td class="timeOfDaysTableTd">
                                         <input type="checkbox" />
                                     </td>
                                     <td class="timeOfDaysTableTd">
                                         <input type="checkbox" />
                                     </td>
                                     <td class="timeOfDaysTableTd">
                                         <input type="checkbox" />
                                     </td>
                                 </tr>
                             </table>

                         </div>

                         <div class="preferDaysDiv">
                             <label style="">Prefered Day of Class:</label>
                             <table class="preferDaysTable">
                                 <tr>
                                     <td class="daysTableTd">Monday</td>
                                     <td class="daysTableTd">Tuesday</td>
                                     <td class="daysTableTd">Wednesday</td>
                                     <td class="daysTableTd">Thursday</td>
                                     <td class="daysTableTd">Friday</td>
                                     <td class="daysTableTd">Saturday</td>
                                     <td class="daysTableTd">Sunday</td>
                                 </tr>
                                 <tr>
                                     <td class="daysTableTd">
                                         <input type="checkbox" />
                                     </td>
                                     <td class="daysTableTd">
                                         <input type="checkbox" />
                                     </td>
                                     <td class="daysTableTd">
                                         <input type="checkbox" />
                                     </td>
                                     <td class="daysTableTd">
                                         <input type="checkbox" />
                                     </td>
                                     <td class="daysTableTd">
                                         <input type="checkbox" />
                                     </td>
                                     <td class="daysTableTd">
                                         <input type="checkbox" />
                                     </td>
                                     <td class="daysTableTd">
                                         <input type="checkbox" />
                                     </td>
                                 </tr>
                             </table>
                         </div>            
                     </div>
                </td>
                 <td class="tdInfo">
                     <button>Search!</button>
                </td>
            </tr>


        </table>
        </div>
        <a name ="Schedule">
        <div style="height:1000px; background-color:green;">    
        </div>.
        <a name ="About">
        <div style="height:250px; background-color:red;">    
        </div>
        
    </form>
</body>
</html>