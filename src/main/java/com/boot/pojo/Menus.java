package com.boot.pojo;

import lombok.Getter;
import lombok.Setter;

import java.math.BigInteger;

@Getter
@Setter
public class Menus {

	private String id;
	private String parentid;
	private String name;
	private String url;
	private int isparent;
	private String icon;
	private String menutype;
	private String memo;
	private BigInteger sortid;
	private String permissionid;
	private int hideflag;

}
