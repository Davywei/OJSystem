package com.liu.OJSystem.BaseInfo;

/**
 * 
 * @author panshuang
 * @param <T>
 * @date 2018-04-18
 */
public class ResultDto <T> {

	/**
	 * ���ؽ����    0-ʧ��   99-�ɹ�
	 */
	private Integer code; 
	/**
	 * ���ؽ����
	 */
	private T data;
	/**
	 * ���ؽ��˵����Ϣ
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
