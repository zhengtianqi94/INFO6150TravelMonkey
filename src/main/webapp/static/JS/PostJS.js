/**
 * Created by zheng on 2017/10/14.
 */

function GetAllPosts() {
    console.log("Call GetAllPosts");
    $.ajax({
        type: 'GET',
        url: '/trippost/Post',
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

function GetPostByID(PostID) {
    console.log("Call GetPost");
    $.ajax({
        type: 'GET',
        url: '/trippost/Post/' + PostID,
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

function PostFileAdd(PostID) {
    console.log(PostID);
    console.log("Call PostFileAdd, add file to " + PostID);
    $.ajax({
        type: 'POST',
        url: '/trippost/File',
        async: true,
        data: {
            _method: 'PUT',
            'PostID': PostID,
            'FilePath': "File add to Post" + PostID
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

function PostDelete(PostID) {
    console.log(PostID);
    console.log("Call PostDelete, delete " + PostID);
    $.ajax({
        type: 'POST',
        url: '/trippost/Post/',
        async: true,
        data: {
            _method: 'DELETE',
            'PostID': PostID
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

function PostUpdate(PostID) {
    console.log(PostID);
    console.log("Call PostUpdate, update " + PostID);
    $.ajax({
        type: 'POST',
        url: '/trippost/Post/',
        async: true,
        data: {
            _method: 'PUT',
            'PostID': PostID
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
