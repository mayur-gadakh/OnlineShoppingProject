

import java.io.IOException;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/OTPservlet")
public class OTPservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public void doPost(HttpServletRequest request, HttpServletResponse response) {
        String email = "mayurgadakh12345@gmail.com";
        int otp = generateOTP();
        sendMail(email, otp);
    }
	public int generateOTP() {
        Random random = new Random();
        System.out.print(random);
        return random.nextInt(9999) + 1000;
    }
	 public void sendMail(String email, int otp) {
	        String to = email;
	        String subject = "OTP for your account";
	        String message = "Your OTP is: " + otp;

	        Properties properties = new Properties();
	        properties.put("mail.smtp.host", "smtp.gmail.com");
	        properties.put("mail.smtp.port", "587");
	        properties.put("mail.smtp.auth", "true");
	        properties.put("mail.smtp.starttls.enable", "true");

	        Session session = Session.getDefaultInstance(properties, new javax.mail.Authenticator() {
	            protected PasswordAuthentication getPasswordAuthentication() {
	                return new PasswordAuthentication("gadakhmayur07@gmail.com", "M@yurg@d@kh1311");
	            }
	        });

	        try {
	            MimeMessage mimeMessage = new MimeMessage(session);
	            mimeMessage.setFrom(new InternetAddress("mayurgadakh12345@gmail.com"));
	            mimeMessage.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
	            mimeMessage.setSubject(subject);
	            mimeMessage.setText(message);
	            Transport.send(mimeMessage);
	        } catch (MessagingException e) {
	            e.printStackTrace();
	        }
	    }
	}


