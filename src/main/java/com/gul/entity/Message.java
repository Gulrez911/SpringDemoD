package com.gul.entity;

public class Message {

	private String to;
	private String message;
	private String subject;
	public String getTo() {
		return to;
	}
	public void setTo(String to) {
		this.to = to;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}

	@Override
	public String toString() {
		return "Message [to=" + to + ", message=" + message + ", subject=" + subject + "]";
	}
}
