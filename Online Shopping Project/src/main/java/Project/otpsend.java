package Project;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class otpsend {

	public static void main(String[] args) {
	
		 
		try {
			
			Properties properties = new Properties();
	        properties.put("mail.smtp.host", "smtp.gmail.com");
	        properties.put("mail.smtp.port", "465");
	        properties.put("mail.smtp.auth", "true");
	        properties.put("mail.debug", "true");
	        properties.put("mail.smtp.socketFactory.port","465");
	        properties.put("mail.smtp.socketFactory.class","javax.net.ssl.socketFactory");
	        properties.put("mail.smtp.socketFactory.fallback","false");	        
	       

	        Session session = Session.getDefaultInstance(properties, new javax.mail.Authenticator() {
	            protected PasswordAuthentication getPasswordAuthentication() {
	                return new PasswordAuthentication("gadakhmayur07@gmail.com", "M@yurg@d@kh1311");
	            }
	        });
	        session.setDebug(true);
	        MimeMessage mimeMessage = new MimeMessage(session);
            mimeMessage.setFrom(new InternetAddress("gadakhmayur07@gmail.com"));
            mimeMessage.addRecipient(Message.RecipientType.TO, new InternetAddress("mayurgadak12345@gmail.com"));
            mimeMessage.setSubject("OTP");
            mimeMessage.setText("hi bro fu");
            Transport.send(mimeMessage);
            System.out.println("message send");
		}
		catch(Exception e) {
			System.out.println(e);
		}

	}

}
