package com.boot.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.boot.service.MenusService;

@Controller
@RequestMapping("menus")
public class MenusController {

	@Autowired
	private MenusService menusService;

	@RequestMapping(value="get/{testRestful}")
	@ResponseBody
	public Map<String,Object> get(HttpServletRequest request,@PathVariable String testRestful,String param)throws Exception{
		System.out.println("Controller:testRestful========="+testRestful);
		System.out.println("Controller:param========="+param);
		Map<String,Object> map = menusService.get(request);
		return map;
	}
	
	@RequestMapping(value="delete/{id}")
	@ResponseBody
	public String delete(@PathVariable String id){
		String result = "1";
		System.out.println("Controller:delete--id======"+id);
		return result;
	}
	
	@RequestMapping(value="/bootstrapTableGet.do")
	@ResponseBody
	public Map<String,Object> bootstrapTableGet(HttpServletRequest request) throws Exception{
		String name = request.getParameter("name");
		String menutype = request.getParameter("menutype");
		System.out.println("Controller:name=========="+name);
		System.out.println("Controller:menutype=========="+menutype);
		Map<String,Object> map = menusService.bootstrapTableGet(request);
		return map;
	}
	
	@RequestMapping(value="/bootstrapTableEdit.do")
	@ResponseBody
	public String bootstrapTableEdit(HttpServletRequest request){
		String result = "0";
		System.out.println("Controller:edit--getid======"+request.getParameter("param[id]"));
		System.out.println("Controller:edit--修改后的内容======"+request.getParameter("param[url]"));
		result = "success";
		return result;
	}

}
