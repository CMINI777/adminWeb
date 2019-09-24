$(document).ready(function() {
    $('#example').DataTable( {
        "ajax": "resources/adminJS/dataTable.txt",
        "columns": [
            { "data": "name" },
            { "data": "position" },
            { "data": "office" },
            { "data": "extn" },
            { "data": "start_date" },
            { "data": "salary" }
        ],
        "oLanguage": {//国际语言转化
            "sUrl": "commons/cn.json"//配置本地化
        }
    } );
} );