package com.friendsbook.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.friendsbook.service.UserService;

@Controller
public class HomeController {
	@Autowired
	UserService userService;

	@RequestMapping(value = "/news", method = RequestMethod.GET)
	public ModelAndView showNews(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("news");
		return mav;
	}

	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public ModelAndView showContact(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("contact");
		return mav;
	}

	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public ModelAndView showAbout(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("about");
		return mav;
	}

	@RequestMapping(value = "/events", method = RequestMethod.GET)
	public ModelAndView showEvents(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("events");
		return mav;
	}

	@RequestMapping(value = "/back", method = RequestMethod.GET)
	public ModelAndView showBack(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("loginSuccessFul");
		return mav;
	}
	@RequestMapping(value = "/loginSuccessFul", method = RequestMethod.GET)
	public ModelAndView showLoginSuccess(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("loginSuccessFul");
		return mav;
	}

}
