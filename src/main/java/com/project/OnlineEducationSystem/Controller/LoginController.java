package com.project.OnlineEducationSystem.Controller;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.project.OnlineEducationSystem.com.project.OnlineEducationSystem.Contact;
import com.project.OnlineEducationSystem.com.project.OnlineEducationSystem.Login;

@Controller

public class LoginController{

	@Autowired
	SessionFactory sf;

	@RequestMapping("loginpage")
	public String login() {
		return "login";

	}


	@RequestMapping("login")
	public String loginDB(Login login,Model model) {
		Session ss= sf.openSession();
		Login dblogin= ss.get(Login.class, login.getPassword());//primarykey is password
		String msg=null;
		String page = "login";
		if(dblogin != null) {
			if(login.getUsername().equals(dblogin.getUsername())) {
				page= "home";
			}else {
				msg= "Invalid Username";
			}
		}else {
			msg="Invalid Password";
		}
			model.addAttribute("error",msg);
			return page;
	}


	@RequestMapping("createaccountpage")
	public String createaccount() {
		return "createaccount";
	}
	
	
	@RequestMapping("createaccount")
	public String createaccountSave(Login login,Model model) {
		Session s = sf.openSession();
	    Transaction t = s.beginTransaction();
	    try {
	        s.save(login);
	        t.commit();
	        model.addAttribute("error", "User account created successfully! Please proceed to login page."); // Set the error attribute to payload
	    } catch (Exception e) {
	        t.rollback(); // Rollback the transaction if an exception occurs
	        e.printStackTrace(); // Log the exception
	        model.addAttribute("error",e);
	    } finally {
	        s.close(); // Close the session in a finally block to ensure resources are released
	    }
	    return "createaccount";
	}

	@RequestMapping("homePage")
	public String homePage() {
		return "home";
	}

	@RequestMapping("aboutpage")
	public String aboutpage() {
		return "about";
	}

	@RequestMapping("coursespage")
	public String coursespage() {
		return "courses";
	}
	@RequestMapping("contactpage")
	public String contactpage() {
		return "contact";
	}


	@RequestMapping("contact")
	public Contact contactSave(Contact contact) {
		Session s=sf.openSession();
		Transaction t= s.beginTransaction();
		s.save(contact);
		t.commit();
			return contact;
	}



}
