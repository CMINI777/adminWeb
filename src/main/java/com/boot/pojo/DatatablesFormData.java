package com.boot.pojo;

import lombok.Getter;
import lombok.Setter;

/**
 * datatables表格实体类(datatables表格默认向服务器传递的参数)
 * @author CG
 */
@Getter
@Setter
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
	
}
