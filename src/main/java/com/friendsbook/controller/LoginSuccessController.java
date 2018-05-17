package com.friendsbook.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.friendsbook.model.User;
import com.friendsbook.service.UserService;

@Controller
public class LoginSuccessController {
	@Autowired
	UserService userService;
	
	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public ModelAndView historyProcess(HttpServletRequest request, HttpServletResponse response){
		ModelAndView mav = null;
		List<User> viewprofile=userService.getDetails();
		mav = new ModelAndView("profile");
		mav.addObject("viewprofilelist",viewprofile);
		/*mav.addObject("source",bookticket.getSource());
	  mav.addObject("destination",bookticket.getDestination());
	  mav.addObject("email",bookticket.getEmail());
	  mav.addObject("dateofjourney",bookticket.getDateofjourney());
	  mav.addObject("passenger",bookticket.getPassenger());
	  mav.addObject("seatno",bookticket.getSeatno());
	  mav.addObject("selectbus",bookticket.getSelectbus());
	  mav.addObject("passengername",bookticket.getPassenger());
	  mav.addObject("mobile",bookticket.getMobile());*/
		//mav.addObject("tickethistory", new Login());
		//mav.addObject("username", User.class);
		return mav;	
	}
}
