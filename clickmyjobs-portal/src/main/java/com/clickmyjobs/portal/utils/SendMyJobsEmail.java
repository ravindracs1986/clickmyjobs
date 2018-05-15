package com.clickmyjobs.portal.utils;

import javax.mail.*;
import javax.mail.internet.*;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;

import com.clickmyjobs.portal.web.controller.HomeController;

import java.util.*;

public class SendMyJobsEmail {
	 private static final Logger logger = LoggerFactory.getLogger(SendMyJobsEmail.class);
	
	 @Autowired
    private MessageSource messageSource;
	
	/*final String senderEmailID = messageSource.getMessage("senderEmail",null, Locale.US);
	final String senderPassword = messageSource.getMessage("senderEmailPassword",null, Locale.US);
	final String emailSMTPserver = messageSource.getMessage("mail.smtp.port",null, Locale.US);
	final String emailServerPort = messageSource.getMessage("mail.smtp.host",null, Locale.US);*/
 	final String senderEmailID = "portalmyjobs@gmail.com";
	final String senderPassword = "Naman1kot@";
	final String emailSMTPserver = "465";
	final String emailServerPort = "smtp.gmail.com";
	//String receiverEmailID = null;
	//static String emailSubject = "Test Mail";
	//static String emailBody = ":)";

	public SendMyJobsEmail(String receiverEmailID, String emailSubject, String emailBody) {
		//this.receiverEmailID = receiverEmailID;
		//this.emailSubject = emailSubject;
		//this.emailBody = emailBody;
		Properties props = new Properties();
		props.put("mail.smtp.user", senderEmailID);
		props.put("mail.smtp.host", emailSMTPserver);
		props.put("mail.smtp.port", emailServerPort);
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.socketFactory.port", emailServerPort);
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.socketFactory.fallback", "false");
		SecurityManager security = System.getSecurityManager();
		try {
			Authenticator auth = new SMTPAuthenticator();
			Session session = Session.getInstance(props, auth);
			MimeMessage msg = new MimeMessage(session);
			msg.setText(emailBody);
			msg.setSubject(emailSubject);
			msg.setFrom(new InternetAddress(senderEmailID));
			msg.addRecipient(Message.RecipientType.TO, new InternetAddress(receiverEmailID));
			Transport.send(msg);
			System.out.println("Message send Successfully:)");
		} catch (Exception mex) {
			mex.printStackTrace();
		}
	}

	public class SMTPAuthenticator extends javax.mail.Authenticator {
		public PasswordAuthentication getPasswordAuthentication() {
			return new PasswordAuthentication(senderEmailID, senderPassword);
		}

	}
}