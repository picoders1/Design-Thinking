

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.mail.*;
import java.util.*;
import javax.mail.internet.*;
/**
 * Servlet implementation class send_mail
 */
@WebServlet("/send_mail")
public class send_mail extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		
		final String subject = "Response from user in need of medical attention";
		final String to = "pikumaity500@gmail.com";
		
		final String firstname = request.getParameter("firstname");
		final String middlename = request.getParameter("middlename");
		final String lastname = request.getParameter("lastname");
		final String gender = request.getParameter("gender");
		final String food = request.getParameter("food");
		final String age = request.getParameter("age");
		final String problem = request.getParameter("problem");
		final String income = request.getParameter("income");
		final String height = request.getParameter("Height");
		final String weight = request.getParameter("Weight");
		String country_code = request.getParameter("country_code");
		if(country_code == null){
			country_code = "+91";
		}
		final String phone = request.getParameter("phone");
		final String problem_definition = request.getParameter("problem_definition");
		final String email = request.getParameter("email");
		
		
		final String from = "praju10032001@gmail.com";
		final String appPass = "wtpdeajqxrifopcg";
		
		String host = "smtp.gmail.com";
		
		Properties pros =  new Properties();
		
		pros.put("mail.smtp.ssl.trust", "*");
		pros.put("mail.smtp.host", host);
		pros.put("mail.transport.protocol", "smtp");
		pros.put("mail.smtp.auth",true);
		pros.put("mail.smtp.ssl.protocols", "TLSv1.2");
		pros.put("mail.smtp.starttls.enable", "true");
		pros.put("mail.user", from);
		pros.put("mail.password", appPass);
		pros.put("mail.smtp.port", "587");
		
		Session mailSession = Session.getInstance(pros, new Authenticator(){
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(from,appPass);
			}
		}
		);
		
		try {
			MimeMessage message = new MimeMessage(mailSession);
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			message.setSubject(subject);
			message.setText("First Name:"+firstname+"\n"+"Middle Name:" + middlename+"\n"+"Last Name:"+lastname+"\n"+"Gender:" + gender+"\n"+"Food choice:"+food+"\n"+"Age:"+age+"\n"+"Problem faced:"+problem+"\n"+"Annual Income:"+income+"\n"+"Height in feet:"+height+"\n"+"Weight in kilo:"+weight+"\n"+"Phone number:"+country_code+phone+"\n"+"Problem definition:"+problem_definition+"\n"+"Email address:"+email);
			Transport.send(message);
			
			out.println("<script type = \"text/javascript\">");
			out.println("alert(\"Your response has been sent to a doctor. We will reach out to you as soon as possible.\")");
			out.println("window.location.href = 'http://localhost:8081/MajorHealthIssues/index.jsp'");
			out.println("</script>");
			
//			out.print("Mail sent successfully");
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		
//		out.print(Weight);
	}
	
	
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//	}
//
//	/**
//	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}

}
