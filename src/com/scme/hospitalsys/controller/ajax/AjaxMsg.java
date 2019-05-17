package com.scme.hospitalsys.controller.ajax;

import java.util.HashMap;
import java.util.Map;

public class AjaxMsg {
	private String msg;
	private int code;
	private Map<String, Object> map = new HashMap<String, Object>();

	public static AjaxMsg success() {
		AjaxMsg ajaxMsg = new AjaxMsg();
		ajaxMsg.setMsg("处理成功");
		ajaxMsg.setCode(200);
		return ajaxMsg;
	}

	public static AjaxMsg fail() {
		AjaxMsg ajaxMsg = new AjaxMsg();
		ajaxMsg.setMsg("处理失败");
		ajaxMsg.setCode(100);
		return ajaxMsg;
	}

	public AjaxMsg addData(String key, Object value) {
		this.map.put(key, value);
		return this;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public Map<String, Object> getMap() {
		return map;
	}

	public void setMap(Map<String, Object> map) {
		this.map = map;
	}
}
