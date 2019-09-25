package com.boot.mapper;

import java.util.List;

import com.boot.pojo.DatatablesFormData;
import com.boot.pojo.Menus;
import org.apache.ibatis.annotations.Param;

public interface MenusMapper {
	List<Menus> get(@Param("params") DatatablesFormData params);
	int selectCount();
}
