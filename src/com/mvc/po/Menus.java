package com.mvc.po;

import java.math.BigInteger;

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
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getParentid() {
		return parentid;
	}
	public void setParentid(String parentid) {
		this.parentid = parentid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public int getIsparent() {
		return isparent;
	}
	public void setIsparent(int isparent) {
		this.isparent = isparent;
	}
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	public String getMenutype() {
		return menutype;
	}
	public void setMenutype(String menutype) {
		this.menutype = menutype;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public BigInteger getSortid() {
		return sortid;
	}
	public void setSortid(BigInteger sortid) {
		this.sortid = sortid;
	}
	public String getPermissionid() {
		return permissionid;
	}
	public void setPermissionid(String permissionid) {
		this.permissionid = permissionid;
	}
	public int getHideflag() {
		return hideflag;
	}
	public void setHideflag(int hideflag) {
		this.hideflag = hideflag;
	}

}
