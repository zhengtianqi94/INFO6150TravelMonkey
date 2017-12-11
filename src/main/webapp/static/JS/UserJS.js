/**
 * Created by zheng on 2017/10/10.
 */

var username;
var password;
var email;

function GetAllUsers() {
    console.log("Call GetAllUsers");
    $.ajax({
        type: 'GET',
        url: '/tripuser/User',
        async: true,
        dataType: 'json',
        success: function (data) {
            console.log(JSON.stringify(data));
        },
        error: function (msg) {
            console.log("Error " + JSON.stringify(msg));
        }
    })
}

function GetUserByID(UID) {
    console.log("Call GetUser");
    $.ajax({
        type: 'GET',
        url: '/tripuser/User/' + UID,
        async: true,
        dataType: 'json',
        success: function (data) {
            console.log(data);
        },
        error: function (msg) {
            console.log("Error " + JSON.stringify(msg));
        }
    })
}

function UserAdd() {
    console.log("Call UserAdd");
    username = document.getElementById("username").value;
    password = document.getElementById("password").value;
    email = document.getElementById("email").value;
    $.ajax({
        type: 'POST',
        url: '/tripuser/User',
        async: true,
        data: {
            'UserName': username,
            'PassWord': password,
            'Email': email
        },
        dataType: 'json',
        success: function (data) {
            location.reload();
            console.log(JSON.stringify(data));
        },
        error: function (msg) {
            console.log("Error " + JSON.stringify(msg));
        }
    })
}

function UserPostAdd(UID) {
    console.log(UID);
    console.log("Call UserPostAdd, add post to " + UID);
    $.ajax({
        type: 'POST',
        url: '/tripuser/Post',
        async: true,
        data: {
            _method: 'PUT',
            'UID': UID,
            'Title': "Post add to User " + UID,
            'Body': "Post Body add to User " + UID
        },
        dataType: 'json',
        success: function (data) {
            console.log(JSON.stringify(data));
        },
        error: function (msg) {
            console.log("Error " + JSON.stringify(msg));
        }
    })
}

function UserDelete(UID) {
    console.log(UID);
    console.log("Call UserDelete, delete " + UID);
    $.ajax({
        type: 'POST',
        url: '/tripuser/User/',
        async: true,
        data: {
            _method: 'DELETE',
            'UID': UID
        },
        dataType: 'json',
        success: function (data) {
            if (data['msg'] != undefined) {
                location.reload();
                console.log(JSON.stringify(data));
            } else {
                console.log(data['Exception']);
            }
        },
        error: function (msg) {
            console.log("Error " + JSON.stringify(msg));
        }
    })
}

function UserUpdate(UID) {
    console.log(UID);
    console.log("Call UserUpdate, update " + UID);
    $.ajax({
        type: 'POST',
        url: '/tripuser/User/',
        async: true,
        data: {
            _method: 'PUT',
            'UID': UID
        },
        dataType: 'json',
        success: function (data) {
            location.reload();
            console.log(JSON.stringify(data));
        },
        error: function (msg) {
            console.log("Error " + JSON.stringify(msg));
        }
    })
}
