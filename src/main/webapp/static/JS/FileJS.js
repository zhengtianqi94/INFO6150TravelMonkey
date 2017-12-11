/**
 * Created by zheng on 2017/10/14.
 */

function GetAllFiles() {
    console.log("Call GetAllFiles");
    $.ajax({
        type: 'GET',
        url: '/tripfile/File',
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

function GetFileByID(FileID) {
    console.log("Call GetFile");
    $.ajax({
        type: 'GET',
        url: '/tripfile/File/' + FileID,
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

function FileDelete(FileID) {
    console.log(FileID);
    console.log("Call FileDelete, delete " + FileID);
    $.ajax({
        type: 'POST',
        url: '/tripfile/File/',
        async: true,
        data: {
            _method: 'DELETE',
            'FileID': FileID
        },
        dataType: 'json',
        success: function (data) {
            if (data['msg'] != undefined) {
                location.reload();
                console.log(data['msg']);
            } else {
                console.log(data['Exception']);
            }
        },
        error: function (msg) {
            console.log("Error " + JSON.stringify(msg));
        }
    })
}

function FileUpdate(FileID) {
    console.log(FileID);
    console.log("Call FileUpdate, update " + FileID);
    $.ajax({
        type: 'POST',
        url: '/tripfile/File/',
        async: true,
        data: {
            _method: 'PUT',
            'FileID': FileID
        },
        dataType: 'json',
        success: function (data) {
            location.reload();
            console.log(data);
        },
        error: function (msg) {
            console.log("Error " + JSON.stringify(msg));
        }
    })
}

function FileUpload(FileID) {
    console.log(FileID);
    console.log("Call FileUpload, upload to " + FileID);
    var formData = new FormData($("form-upload-" + FileID)[0]);
    formData.append('Content-Type', 'multipart/form-data');
    formData.append('File', $('#file-to-upload-' + FileID)[0].files[0]);
    console.log(formData);
    $.ajax({
        url: '/tripfile/Upload/' + FileID,
        type: 'POST',
        data: formData,
        dataType: 'json',
        contentType: false,
        processData: false,
        cache: false,
        success: function (data) {
            if (data['Path'] == undefined) {
                console.log(data);
            } else {
                location.reload();
                console.log(JSON.stringify(data));
            }
        },
        error: function (msg) {
            console.log("Error " + JSON.stringify(msg));
        }
    })
}