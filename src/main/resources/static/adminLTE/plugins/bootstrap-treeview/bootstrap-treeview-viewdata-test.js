	var gettreeview = function (node, source, field) {
		var tree = new Object();
	    var getChild = function (node, source, field) {
	        var data = [];
	        var viewdata = [];
	        var items = $.grep(source, function (item, index) {
	            return item.parentid == node[field];
	        });
	        $.each(items, function (index, item) {
	        	data.push(item);
	        	//生成节点
	        	var _node = new Object(); 
	        	_node.text = item.name; //列表树节点上的文本，通常是节点右边的小图标。
	        	_node.href='http://localhost:8080/adminWeb/jsp/index.jsp';//结合全局enableLinks选项为列表树节点指定URL。
//	        	_node.tags=[4];//通过结合全局showTags选项来在列表树节点的右边添加额外的信息。	
//	        	_node.icon="glyphicon glyphicon-stop";//列表树节点上的图标，通常是节点左边的图标。
//	        	_node.selectedIcon = "glyphicon glyphicon-stop";//当某个节点被选择后显示的图标，通常是节点左边的图标。
//	        	_node.color = "#000000";//节点的前景色，覆盖全局的前景色选项。
//	        	_node.backColor = "#FFFFFF";//节点的背景色，覆盖全局的背景色选项。
//	        	_node.selectable = true;//指定列表树的节点是否可选择。设置为false将使节点展开，并且不能被选择。
	            var child = getChild(item, source, field);
	            if (child.length > 0) {
	            	_node.nodes = new Array();
	                $.each(child, function (i, n) {
	                	//生成子节点
	                	var _leaf = new Object(); 
	                	_leaf.text = n.name;                	
	                	
	                	var child2 = getChild(n, source, field);
	                	if(child2.length > 0){
	                		_leaf.nodes = new Array();
	                		$.each(child2, function (o, p) {
	                        	//生成子节点
	                        	var _leaf2 = new Object(); 
	                        	_leaf2.text = p.name; 
	                        	
	                        	var child3 = getChild(p, source, field);
	                        	if(child3.length > 0){
	                        		_leaf2.nodes = new Array();
	                        		$.each(child3, function (k, l) {
	                        			//生成子节点
	                                	var _leaf3 = new Object(); 
	                                	_leaf3.text = l.name; 
	                                	_leaf2.nodes[k] = _leaf3;
	                                });
	                        	}
	                        	_leaf.nodes[o] = _leaf2;
	                        });
	                	}
	                	_node.nodes[i] = _leaf;
	                });
	            }	            
	            viewdata.push(_node);	            
	        });
	        tree.viewdata = viewdata;
	        return data;
	    };
	    getChild(node, source, field);
		return tree.viewdata;
	};
