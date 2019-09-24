package com.mvc.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.mvc.model.DatatablesFormData;
import com.mvc.po.Menus;

public interface MenusMapper {
	List<Menus> get(@Param("params") DatatablesFormData params);
	int selectCount();
}
