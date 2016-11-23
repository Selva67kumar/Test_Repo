package com.niit.bookfront.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.bookback.dao.CategoryDAO;

@Controller
public class homecontroller {
	
	
	
	@RequestMapping("/")
	public String Home(Model model)
	{
		model.addAttribute("para","true");
		model.addAttribute("logout", "true");
		return "index";	
	}
	
	@RequestMapping("logout")
	public String logout(Model model)
	{
		model.addAttribute("para","true");
		model.addAttribute("logout","true");
		return "index";
	}
	
	@RequestMapping("home")
	public String house(Model model)
	{
		model.addAttribute("logout","true");
		model.addAttribute("para","true");
		return "index";	
	}
	
	@RequestMapping("/category")
	public String category(Model model)
	{
		model.addAttribute("loggin","true");
		model.addAttribute("cate","true");
		return "index";	
	}
	
	@RequestMapping("/supplier")
	public String supplier(Model model)
	{
		model.addAttribute("loggin","true");
		model.addAttribute("supp","true");
		return "index";	
	}
	
	@RequestMapping("/product")
	public String product(Model model)
	{
		model.addAttribute("loggin","true");
		model.addAttribute("pro","true");
		return "index";	
	}
	
		@RequestMapping("/login")
	public String login(Model sel,Model model)
	{
			model.addAttribute("logout","true");
			sel.addAttribute("signin","true");
		return "index";	
	}
	
	@RequestMapping("/register")
	public String register(Model model)
	{
		model.addAttribute("logout","true");
		model.addAttribute("signup","true");
		return "index";	
	}
	

	@RequestMapping("/validate")
	public String validate(@RequestParam(name="User Id")String id,@RequestParam(name="password")String pwd,Model model,Model sel)
	{
		if(id.equals("selva") && pwd.equals("hello"))
		{
			model.addAttribute("correct","Sucessfully logged in");
			model.addAttribute("loggin","true");
			model.addAttribute("name",id);
			return "index";
		}
		else
		{
			model.addAttribute("incorrect","Username or password is invalid");
			
			sel.addAttribute("signin","true");
			return "index";
		}
		
	}

}