package com.newt.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

@Controller
public class LoginController extends MultiActionController{
	
	private static String loginAuthentication="guest";
	
	public ModelAndView Welcome(HttpServletRequest request,  HttpServletResponse response) throws Exception {
		
		String username=null;
		String password=null;
		String msg=null;
		
		
		try{
			username = (String)request.getParameter("usrname");
			password = (String)request.getParameter("pwd");
			msg="";
			
			if(username==null){
				username="";
			}
			
			if(password==null){
				password="";
			}
			
						
			if(username.equals("user1") && password.equals("newt123")){
				loginAuthentication="pass";
				msg="Welcome Harish Main";
			}else if(username.equals("") && password.equals("")){
				loginAuthentication="guest";
			}else{
				loginAuthentication="fail";
			}
			
			System.out.println("usrname:"+username+", password:"+password+", loginStatus:"+loginAuthentication);
			
			request.setAttribute("username",username);
			request.setAttribute("password",password);
			request.setAttribute("msg",msg);
			request.setAttribute("loginStatus",loginAuthentication);
			
		}catch(Exception e){
			System.out.println("Inside LoginController :: welcome(), Exception:"+e);
		}

		
		return new ModelAndView("/login/Welcome");
		
	}

}
