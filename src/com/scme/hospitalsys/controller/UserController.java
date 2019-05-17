package com.scme.hospitalsys.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.scme.hospitalsys.pojo.User;
import com.scme.hospitalsys.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("/login")
	public String login(User user,HttpServletRequest req) throws Exception {
		User loginUser = userService.findUser(user);
		if(loginUser!=null) {
			req.getSession().setAttribute("user", loginUser);
		}
		return "redirect:/indexHospital";
	}
	
	@RequestMapping("/test")
	public String test(User user) throws Exception {
		System.out.println(user.getUsername());
		return "redirect:/indexHospital";
	}
}
