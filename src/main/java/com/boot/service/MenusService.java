package com.boot.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface MenusService {

	public Map<String,Object> get(HttpServletRequest request) throws Exception;
	public int selectCount() throws Exception;
	public Map<String,Object> bootstrapTableGet(HttpServletRequest request) throws Exception;
}
