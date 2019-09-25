package com.boot.service.impl;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.boot.mapper.MenusMapper;
import com.boot.pojo.DatatablesFormData;
import com.boot.pojo.Menus;
import com.boot.service.MenusService;
import com.boot.utils.DatatablesUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("menusService")
public class MenusServiceImpl implements MenusService {
	
	@Autowired
	private MenusMapper menusMapper;


	@Override
	public Map<String,Object> get(HttpServletRequest request) throws Exception{		
		
		
		DatatablesFormData formData = DatatablesUtil.formData(request);//调用datatabales工具类对所传参数进行封装
		
		int count = selectCount();//查询总记录数
		
		List<Menus> list = menusMapper.get(formData);//通过Mapper接口进行查询
		
		Map<String,Object> map = new HashMap<String,Object>();//对返回的数据进行封装		
		
		map.put("recordsTotal", count);//为了赋值给js中"sInfoFiltered" : "(全部记录数 _MAX_ 条)"	 
		
	    map.put("recordsFiltered", count);//为了赋值给js中"从 _START_ 到  _END_ 条记录 总记录数为 _TOTAL_ 条"
        
		map.put("data", list);//datatables正确返回的数据格式为{data:[……]}
		
		return map;
	}


	@Override
	public int selectCount() throws Exception {
		return menusMapper.selectCount();
	}

	@Override
	public Map<String, Object> bootstrapTableGet(HttpServletRequest request) throws Exception {

		DatatablesFormData formData = DatatablesUtil.bootstrapTableFormData(request);//调用datatabales工具类对Bootstrap Table所传参数进行封装
		
		int count = selectCount();//查询总记录数
		
		List<Menus> list = menusMapper.get(formData);//通过Mapper接口进行查询
		
		Map<String,Object> map = new HashMap<String,Object>();//对返回的数据进行封装		
		
		map.put("total", count);//总记录数	 	
		
		map.put("rows", list);
		
		return map;
	}
}
