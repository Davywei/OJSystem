package com.liu.OJSystem.BaseInfo;

/**
 * 
 * @author panshuang
 * @param <T>
 * @date 2018-04-18
 */
public class ResultDto <T> {

	/**
	 * 返回结果码    0-失败   99-成功
	 */
	private Integer code; 
	/**
	 * 返回结果集
	 */
	private T data;
	/**
	 * 返回结果说明信息
	 */
	private String info;
	public Integer getCode() {
		return code;
	}
	public void setCode(Integer code) {
		this.code = code;
	}
	public T getData() {
		return data;
	}
	public void setData(T data) {
		this.data = data;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	
}
