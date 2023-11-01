package com.exam.sts.test;

public class Contact {
    private String name;
    private String id;
    private String subject;
    private String message;

    public Contact() {
    }

    public Contact(String name, String id, String subject, String message) {
        this.name = name;
        this.id = id;
        this.subject = subject;
        this.message = message;
    }

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

}