package com.friendsbook.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.friendsbook.model.User;
import com.friendsbook.service.UserService;

@Controller
public class RegistrationController {
	@Autowired
	public UserService userService;

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView showRegister(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("register");
		mav.addObject("user", new User());
		return mav;
	}

	@RequestMapping(value = "/registerProcess", method = RequestMethod.POST)
	public ModelAndView addUser(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("user") User user) {
		//userService.register(user);
		request.getSession().setAttribute("firstname",user.getFirstname());
		
		try{
		      userService.register(user);
		      }catch(Exception e){
		       //e.printStackTrace();
		       //System.out.println("user already exists");
		      
		       return new ModelAndView("register","message","user already exists with same mobile number");
		      }
		
		return new ModelAndView("welcome", "phone", user.getPhone());
	}
}
