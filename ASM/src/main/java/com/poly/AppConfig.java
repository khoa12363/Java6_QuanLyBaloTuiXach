package com.poly;

import org.springframework.context.annotation.Bean;

import com.poly.impl.MailerServiceImpl;
import com.poly.impl.SessionServiceImpl;
import com.poly.service.MailerService;
import com.poly.service.SessionService;

public class AppConfig {
	@Bean
    public SessionServiceImpl sessionService() {
        return new SessionServiceImpl();
    }
	@Bean
    public MailerServiceImpl mailerService() {
        return new MailerServiceImpl();
    }
}
