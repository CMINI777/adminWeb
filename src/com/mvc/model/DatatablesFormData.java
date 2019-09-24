package com.mvc.model;

/**
 * datatables表格实体类(datatables表格默认向服务器传递的参数)
 * @author CG
 *
 */
public class DatatablesFormData {

	/**
	 * 从多少开始
	 */
	private Integer start;
	
	/**
	 * 每页显示的数据长度
	 */
	private Integer length;
	
	/**
	 * 排序的顺序asc or desc
	 */
	private String orderDir;
	
	/**
	 * 排序的列。注意，页面上的列的名字要和表中列的名字一致，否则，会导致SQL拼接错误
	 */
	private String orderColumn;

	public Integer getStart() {
		return start;
	}

	public void setStart(Integer start) {
		this.start = start;
	}

	public Integer getLength() {
		return length;
	}

	public void setLength(Integer length) {
		this.length = length;
	}

	public String getOrderDir() {
		return orderDir;
	}

	public void setOrderDir(String orderDir) {
		this.orderDir = orderDir;
	}

	public String getOrderColumn() {
		return orderColumn;
	}

	public void setOrderColumn(String orderColumn) {
		this.orderColumn = orderColumn;
	}
	
	
}
