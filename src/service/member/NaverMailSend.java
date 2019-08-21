package service.member;

import java.io.IOException;
import java.util.Date;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.MovieR_ActionSS;

public class NaverMailSend implements MovieR_ActionSS {
  

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	// 메일 관련 정보
		String host = "smtp.naver.com";
		final String username = "nodias@naver.com";
		final String password = "";
		int port=465;
		 
		// 메일 내용
		String id=(String) request.getAttribute("id");
		String token = (String) request.getAttribute("token");
		String recipient = id;
		String subject = "MovieR 비밀번호 찾기 서비스";
		String body = "<h3>MovieR의 "+id+"의 비밀번호 찾기를 요청하셨습니다. 맞으시면 아래의 링크를 클릭해 주세요.</h3><br>"
			+ " <a href='http://localhost:8081/MovieR/member/pwfind2.ss?id="+id+"&token="+token+"'>비밀번호 변경하러 가기!!</a>";

		
		Properties props = System.getProperties();
		 
		 
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", port);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.ssl.enable", "true");
		props.put("mail.smtp.ssl.trust", host);
		  
		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
		    String un=username;
		    String pw=password;
		    protected PasswordAuthentication getPasswordAuthentication() {
			return new PasswordAuthentication(un, pw);
		    }
		});
		session.setDebug(true); //for debug
		  
		Message msg = new MimeMessage(session);
		try {
		    msg.setFrom(new InternetAddress("nodias@naver.com"));
		
		msg.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
		msg.setSubject(subject);
		msg.setSentDate(new Date());
		 
		// 파일 첨부시에는 BodyPart를 사용
		// msg.setText(body);
		 
		// 파일첨부를 위한 Multipart
		Multipart multipart = new MimeMultipart();
		 
		// BodyPart를 생성
		BodyPart bodyPart = new MimeBodyPart();
		bodyPart.setText(body);
		 
		// 1. Multipart에 BodyPart를 붙인다.
		multipart.addBodyPart(bodyPart);
		 
		// 2. 이미지를 첨부한다.
		bodyPart = new MimeBodyPart();
		String filename = "C:/Users/nodia/Downloads/111이미지/890233_0.jpg";
		DataSource source = (DataSource) new FileDataSource(filename);
		bodyPart.setDataHandler(new DataHandler((javax.activation.DataSource) source));
		bodyPart.setFileName(filename);
		//Trick is to add the content-id header here
		bodyPart.setHeader("Content-ID", "image_id");
		multipart.addBodyPart(bodyPart);
		 
		//third part for displaying image in the email body
		bodyPart = new MimeBodyPart();
		bodyPart.setContent("<h1>MovieR을 이용해주셔서 감사합니다.</h1>" + "<img src='cid:image_id'><br>"+body, "text/html; charset=utf-8");
		multipart.addBodyPart(bodyPart);
		
		// 이메일 메시지의 내용에 Multipart를 붙인다.
		msg.setContent(multipart, "text/html; charset=utf-8");
		Transport.send(msg);
		} catch (MessagingException e) {
		    // XXX Auto-generated catch block
		    e.printStackTrace();
		}
		response.sendRedirect("../member/pwfind3.ss");
    }
}
