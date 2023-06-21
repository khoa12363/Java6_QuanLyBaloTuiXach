package com.poly.interfaces;

import jakarta.mail.MessagingException;

public interface EmailService  {
	void sendEmail(String to, String subject, String body) throws MessagingException;
}
