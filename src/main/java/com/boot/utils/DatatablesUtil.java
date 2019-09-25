package com.boot.utils;

import com.boot.pojo.DatatablesFormData;
import lombok.NoArgsConstructor;

import javax.servlet.http.HttpServletRequest;

/**
 * datatables表格工具类
 * @author CG
 */
@NoArgsConstructor  //无参构造
public class DatatablesUtil {
	
	/**
	 * 对datatables默认发送的参数进行封装
	 * @param request
	 * @return
	 */
	public static DatatablesFormData formData (HttpServletRequest request){
		
		Integer start = 0;
		
		Integer length = 0;

		String startStr = request.getParameter("start");

		String lengthStr = request.getParameter("length");

		String order = request.getParameter("order[0][column]");//排序的列号 

		String orderDir = request.getParameter("order[0][dir]");//排序的顺序asc or desc 

		String orderColumn = request.getParameter("columns["+order+"][data]");//排序的列。页面上的列的名字要和表中列的名字一致，否则，会导致SQL拼接错误 
		
		if (null == orderDir || "".equals(orderDir)) 
		{
			orderDir = "asc";
		}
		if (null == orderColumn || "".equals(orderColumn))
		{
			orderColumn = "id";
		}
		if (null != startStr && !"".equals(startStr))
		{
			start = Integer.parseInt(request.getParameter("start"));
		}
		if (null != lengthStr && !"".equals(lengthStr))
		{
			length = Integer.parseInt(request.getParameter("length"));
		}
		
		DatatablesFormData formData = new DatatablesFormData();
		
		formData.setStart(start);
		
		formData.setLength(length);
		
		formData.setOrderDir(orderDir);
		
		formData.setOrderColumn(orderColumn);
		
		return formData;
	}
	
	/**
	 * 对Bootstrap Table发送的参数进行封装
	 * @param request
	 * @return
	 */
	public static DatatablesFormData bootstrapTableFormData (HttpServletRequest request){
		
		Integer start = 0;
		
		Integer length = 0;

		String startStr = request.getParameter("offset");//数据的起始值

		String lengthStr = request.getParameter("limit");//页面大小(每页显示多少条数据)

		String orderDir = request.getParameter("order");//排序顺序

		String orderColumn = request.getParameter("ordername");//排序的列。页面上的列的名字要和表中列的名字一致，否则，会导致SQL拼接错误 
		
		if (null == orderDir || "".equals(orderDir)) 
		{
			orderDir = "asc";
		}
		if (null == orderColumn || "".equals(orderColumn))
		{
			orderColumn = "id";
		}
		if (null != startStr && !"".equals(startStr))
		{
			start = Integer.parseInt(startStr);
		}
		if (null != lengthStr && !"".equals(lengthStr))
		{
			length = Integer.parseInt(lengthStr);
		}
		
		DatatablesFormData formData = new DatatablesFormData();
		
		formData.setStart(start);
		
		formData.setLength(length);
		
		formData.setOrderDir(orderDir);
		
		formData.setOrderColumn(orderColumn);
		
		return formData;
	}
}
