function callAjax(e) {
    e.preventDefault();
    alert("works")
    $.ajax
        ({

            type: "POST",
            url: "Webform1.aspx/backEndFunction",
            data: "{}",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                alert(response.d);
            },
            failure: function (response) {
                alert("broken")
            }


        })
}

