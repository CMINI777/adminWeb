$(document).ready(function() {
    $('#example').DataTable( {
        "ajax": "../static/js/dataTable.txt",
        "columns": [
            { "data": "name" },
            { "data": "position" },
            { "data": "office" },
            { "data": "extn" },
            { "data": "start_date" },
            { "data": "salary" }
        ],
        "oLanguage": {//国际语言转化
            "sUrl": "../static/commons/cn.json"//配置本地化
        }
    } );
} );