package com.cgm.domain;

import java.io.Serializable;

public class Message  implements Serializable {
	private String content;

	public Message(String content) {
		
		this.content = content;
	}
	public Message() {
		
	}
	
	

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	

}
