//function callAjax(e) {
//    e.preventDefault();
//    alert("works")
//    $.ajax
//        ({

//            type: "POST",
//            url: "Webform1.aspx/backEndFunction",
//            data: "{}",
//            contentType: "application/json; charset=utf-8",
//            dataType: "json",
//            success: function (response) {
//                alert(response.d);
//            },
//            failure: function (response) {
//                alert("broken")
//            }


//        })
//}

//$(document).ready(function () {

//    $('select').change(function () {


//        //alert("works");
//        var elementID = this.id


//        if (elementID.length == 9) {
//            //alert(id);
//            var optionSelected = $('#' + elementID + ' option:selected').val();
//            //alert(data);
//            $.ajax({


//                type: 'POST',
//                url: "WebForm1.aspx/getCourses",
//                data: "{course:'" + optionSelected + "', select:'" + elementID + "' }",
//                contentType: "application/json; charset=utf-8",
//                dataType: "json",
//                success: function (data) {
//                    populateCourseSelect(data.d)
//                    //alert(data.d);

//                },

//                failure: function (response) {
//                    alert("broken")
//                }


//            });

//        }
//    })

//    function populateCourseSelect(str) {

//        var listOfCourse = str.substring(9);

//        var tempSelect = str.substring(0, 9);
//        var select = tempSelect + tempSelect[8]

//        var num = "";

//        $('#' + select + '')
//            .empty()
//            ;

//        for (var i = 0; i < listOfCourse.length; i++) {

//            var tempNum = listOfCourse[i];

//            if (tempNum != ",") {
//                num += tempNum;

//            } else {
//                var x = document.getElementById("" + select + "");
//                var option = document.createElement("option");
//                option.text = num;
//                x.add(option);
//                num = "";
//            }

//        }

//    }

//});






