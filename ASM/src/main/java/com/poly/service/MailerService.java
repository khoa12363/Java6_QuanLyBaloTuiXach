package com.poly.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.poly.interfaces.EmailService;

import jakarta.mail.MessagingException;

@Service
public class MailerService {
	@Autowired
    private EmailService emailService;
	
	@Value("${google.api.key}")
    private String googleApiKey;
	
	public void setEmailService(EmailService emailService) {
        this.emailService = emailService;
    }
    public void sendEmail(String to, String subject, String body) throws MessagingException {
        emailService.sendEmail(to, subject, body);
    }
}

