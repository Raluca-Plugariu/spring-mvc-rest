package com.cgm.dto;

public class Response {
	private String message = "Operation Succesfull!";
	private int code = 200;
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}


	public Response(String message) {

		super();

		this.message = message;

	}

}