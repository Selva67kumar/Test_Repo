package com.niit.bookfront.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.bookback.dao.UserDAO;
import com.niit.bookback.model.User;


public class modelcontroller {

	@Autowired
	UserDAO ud;

	@ModelAttribute("userobj")
	public User getUser() {
		return new User();
	}

	@RequestMapping(value="/save",method=RequestMethod.POST)
	public String gosave(@ModelAttribute("userobj")User u)
	{
		ud.save(u);
		return "login";
	}
	
}
