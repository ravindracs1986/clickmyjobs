package com.clickmyjobs.portal.utils;

import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;

public class SendMail {

	public SendMail() {
	}

	public SendMail(String toAddress, String otp,String name,String subject) {
		String host = null;
		final String user;
		final String pass;
		try {
			host = "mail.smsaware.in";// com.smsaware.utils.AESCryptUtil.decrypt(PropertiesManager.getInstance().getValue("host"));
			user = com.clickmyjobs.portal.utils.AESCryptUtil.decrypt("9393BC1IxyW2FKy+hgweY4qSetVFo3/hIh/p3MyXg4U=");
			pass = com.clickmyjobs.portal.utils.AESCryptUtil.decrypt("YK/uqzDZSyirw1LAQpBFgA==");
			String to = toAddress;// change accordingly

			// Get the session object
			Properties props = new Properties();
			props.put("mail.smtp.host", host);
			props.put("mail.smtp.auth", "true");
			props.put("mail.transport.protocol", "smtp");
			props.put("mail.smtp.starttls.enable", false);
			props.put("mail.smtp.host", host);
			props.put("mail.smtp.socketFactory.port", "465");
			props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.port", "587");

			Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(user, pass);
				}
			});

			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(user));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			message.setSubject(subject);
			message.setContent("<h3>Dear "+name+" </h3> <br> Your profile is created,Please login and update profile for activation <br> ClickMyjobs Team", "text/html");
			//message.setText("Dear "+name+" <br> Your one time PIN is :" + otp+" and its valid for 60 minutes.");

			// send the message
			Transport.send(message);

			System.out.println("Mail sent successfully...");
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

	}
}
