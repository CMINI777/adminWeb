var viewdata = function (data, field ,parent) {
	var tree = new Object();
	var roots = $.grep(data, function (row, index) {
        return row.parentid == parent;
	});
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
	        _node.icon = item.icon;//列表树节点上的图标，通常是节点左边的图标。
	        	
	        /* 
	         * 以下为扩展属性，视情况添加引用
	         * _node.selectedIcon = "glyphicon glyphicon-stop";//当某个节点被选择后显示的图标，通常是节点左边的图标。
	         * _node.color = "#000000";//节点的前景色，覆盖全局的前景色选项。
	         * _node.backColor = "#FFFFFF";//节点的背景色，覆盖全局的背景色选项。
	         * _node.selectable = true;//指定列表树的节点是否可选择。设置为false将使节点展开，并且不能被选择。
	         * _node.tags=[4];//通过结合全局showTags选项来在列表树节点的右边添加额外的信息。	 
	         * 
	         */
	        		        	
	        var child = getChild(item, source, field);
	        if (child.length > 0) {
	            _node.J_menuItem = false;
	            _node.nodes = new Array();
	            $.each(child, function (i, n) { 
	                //生成子节点
	                var _leaf = new Object(); 
	                _leaf.text = n.name;                	
	                _leaf.icon = n.icon;
	                	
	                var child2 = getChild(n, source, field);
	                if(child2.length > 0){
	                	_leaf.J_menuItem = false;
	                	_leaf.nodes = new Array();
	                	$.each(child2, function (o, p) { 
	                        //生成子节点
	                        var _leaf2 = new Object(); 
	                        _leaf2.text = p.name; 
	                        _leaf2.icon = p.icon;
	                        	
	                        var child3 = getChild(p, source, field);
	                        if(child3.length > 0){
	                        	_leaf2.J_menuItem = false;
	                        	_leaf2.nodes = new Array();
	                        	$.each(child3, function (k, l) {
	                        		//生成子节点
	                                var _leaf3 = new Object(); 
	                                _leaf3.text = l.name; 
	                                _leaf3.icon = l.icon;
	                                	
	                                var child4 = getChild(l, source, field);
	                                if(child4.length > 0){
	    	                        	_leaf3.J_menuItem = false;
	    	                        	_leaf3.nodes = new Array();
	    	                        	$.each(child4, function (c4i, c4o) {
	    	                        		//生成子节点
	    	                                var _leaf4 = new Object(); 
	    	                                _leaf4.text = c4o.name; 
	    	                                _leaf4.icon = c4o.icon;
	    	                                _leaf4.J_menuItem = true;
	    	                                _leaf4.href= c4o.url;
	    	                                _leaf3.nodes[c4i] = _leaf4;
	    	                            });
	    	                        } else {
	    	                        	_leaf3.J_menuItem = true;
	    	                        	_leaf3.href= l.url;
	    	                        }
	                                _leaf2.nodes[k] = _leaf3;
	                            });
	                        } else {
	                        	_leaf2.J_menuItem = true;
	                        	_leaf2.href= p.url;
	                        }
	                        _leaf.nodes[o] = _leaf2;
	                    });
	                } else {
	                	_leaf.J_menuItem = true;
	                	_leaf.href= n.url;
	                }
	                _node.nodes[i] = _leaf;
	            });
	        } else {
	            _node.J_menuItem = true;//多tab页引用：为true时则对该节点的class赋值"J_menuItem"
	            _node.href= item.url;//结合全局enableLinks选项为列表树节点指定URL。
	        }	            
	        viewdata.push(_node);	            
	    });
	    tree.viewdata = viewdata;
	    return data;
	};
	getChild(roots[0], data, field);
	return tree.viewdata;
};