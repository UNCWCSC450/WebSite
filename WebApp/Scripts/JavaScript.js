
    function jsfunction(control) {

        switch (control.id) {

            case "myselect1":
                document.getElementById("myselect11").style.visibility = "visible";
                break;
            case "myselect2":
                document.getElementById("myselect22").style.visibility = "visible";
                break;
            case "myselect3":
                document.getElementById("myselect33").style.visibility = "visible";
                break;
            case "myselect4":
                document.getElementById("myselect44").style.visibility = "visible";
                break;
            case "myselect5":
                document.getElementById("myselect55").style.visibility = "visible";
                break;
            case "myselect6":
                document.getElementById("myselect66").style.visibility = "visible";
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