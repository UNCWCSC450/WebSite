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

});


function sendCourses() {
    $.ajax({

        type: 'POST',
        url: "WebForm1.aspx/algorithm",
        data: "{course1:'" + course1.concatStr + "', course2:'" + course2.concatStr + "', course3:'" + course3.concatStr + "', course4:'" + course4.concatStr + "', course5:'" + course5.concatStr + "', course6:'" + course6.concatStr + "'}",
        contentType: "application/json; charset=utf-8",
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
    alert("CRN" + crn);
    alert("time" + time);


}








