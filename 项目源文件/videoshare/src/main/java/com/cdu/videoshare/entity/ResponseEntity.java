package com.cdu.videoshare.entity;

/**
 * 统一响应的实体类
 *
 * @author 蜗牛学院 (<a href="http://www.woniuxy.com">蜗牛学院</a>)
 */
public class ResponseEntity<T> {
    private int code;   //响应码
    private String msg; //消息
    private T data; //数据

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }
}
