package com.friendsbook.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.friendsbook.model.Login;
import com.friendsbook.model.User;
import com.friendsbook.service.UserService;

@Controller
public class LoginController {
	@Autowired
	UserService userService;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView showLogin(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("register");
		mav.addObject("login", new Login());
		return mav;
	}
	
	@SuppressWarnings("unused")
	@RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
	public ModelAndView loginProcess(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("login") Login login) {
		ModelAndView mav = null;
		User user = userService.validateUser(login);
		request.getSession().setAttribute("firstname",user.getFirstname());
		if (null != user) {
			mav = new ModelAndView("loginSuccessFul");
			mav.addObject("firstname", user.getFirstname());
		} 
		else {
			mav = new ModelAndView("register");
			mav.addObject("message", "Username or Password is wrong!!");
		}
		return mav;
	}
}