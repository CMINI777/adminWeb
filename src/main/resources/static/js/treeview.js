$(document).ready(function () {

	$.post("../menus/bootstrapTableGet.do", { limit: "50", offset: "0",  order: "asc",  ordername: "id" },
			   function(data){
			     var treedata = viewdata(data.rows,"id","ROOT");
//			     $('#tree').treeview({data: treedata});//使用treeview最简单的写法
			     
			     $('#tree').treeview({
			            expandIcon: "glyphicon glyphicon-stop",//设置列表树可展开节点的图标。
			            collapseIcon: "glyphicon glyphicon-unchecked",//设置列表树可收缩节点的图标。
			            nodeIcon: "glyphicon glyphicon-user",//设置所有列表树节点上的默认图标。
			            color: "yellow",//设置列表树所有节点的前景色。
			            backColor: "purple",//设置所有列表树节点的背景颜色。
			            onhoverColor: "orange",//设置列表树的节点在用户鼠标滑过时的背景颜色。
			            borderColor: "red",//设置列表树容器的边框颜色，如果不想要边框可以设置showBorder属性为false。
			            showBorder: false,//是否在节点上显示边框。
//			            showTags: true,//是否在每个节点右边显示tags标签。tag值必须在每个列表树的data结构中给出。
			            highlightSelected: true,//当选择节点时是否高亮显示。
			            selectedColor: "yellow",//设置列表树选择节点的背景颜色。
			            selectedBackColor: "darkorange",//设置被选择节点的背景颜色。
			            data: treedata,  //列表树上显示的数据。
			            levels: 1,    //设置继承树默认展开的级别。
			            enableLinks: true //是否使用当前节点的文本作为超链接。超链接的href值必须在每个节点的data结构中给出。
			          });
	}, "json");
});