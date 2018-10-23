<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApp.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <style>
body, html{
    margin:0;
    padding:0;
    height: 100%; 
    width: 100%;
}


/*Nav bar*/
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: blue; /*Nav bar color*/
            position: -webkit-sticky; /* Safari */
            /*position: sticky;
            top: 0;*/
        }

        li {
            float: right;
        }

            li a {
                display: block;
                color: white;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

                li a:hover {
                    background-color: #111;
                }

th{
    padding:75px;
    font-size: 50px;
    background-color:blue;
    width:15%;
}

.homeImg{
    background-image:url(https://c8.alamy.com/comp/J3A6TX/messy-office-desk-J3A6TX.jpg); 
    background-size:cover; 
    height:350px;
    background-repeat: no-repeat; 
    background-position:center;
}

.nav-wrapper{
    position: sticky;
    top: 0;
}

.table-wrapper{
    margin-top:150px;
    position:center;
    margin-left: 25px;
    margin-right:25px;
}

table{
        border-spacing: 50px;
        border-collapse: separate;
        background-color:aqua;
}

.tdInfo{
    padding:75px;
    font-size: 50px;
    text-align:center;

    width:15%;
}



    </style>

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

        </table>
            </div>
        
    </form>
</body>
</html>
