Readium.HttpFileApi = function(initCallback) {

    var APP_ROOT_PATH = window.location.pathname.replace(/\\/g,'/').replace(/\/[^\/]*$/, '') + '/';

    var api = {
        APP_ROOT_PATH: APP_ROOT_PATH,
        readTextFile: function(path, readCallback, errorCallback) {
            // Make sure paths are relative to the application root
            path = APP_ROOT_PATH + path;
            $.ajax({
                //'cache' : false,
                'url' : path,
                'dataType' : 'text',
                'success' : function(data, textStatus, jqXHR) {
                    readCallback(data, jqXHR)
                },
                'error' : function(data, textStatus, jqXHR) {
                    errorCallback(data, textStatus, jqXHR)
                }
            })
        },

        getFsUri: function(path, successCallback, errorCallback) {
            successCallback(document.location.protocol + '//' + document.location.host + APP_ROOT_PATH +  path)
        }
    }

    return function ( callback ) {
        callback(api);
        return api;
    }
}();

// patch in:
// TODO: Find a way to easily patch in
Readium.FileSystemApi = Readium.HttpFileApi
