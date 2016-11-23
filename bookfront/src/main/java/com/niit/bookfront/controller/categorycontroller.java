package com.niit.bookfront.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.niit.bookback.dao.CategoryDAO;
import com.niit.bookback.model.Category;

@Controller
public class categorycontroller {
	
	 
	@Autowired(required=true)
	private CategoryDAO categoryDAO;
	
	
	@ModelAttribute("categoryobj")
	public Category getCategory(){
		return new Category();
	}
	

	@RequestMapping(value = "/managecategory", params = "add", method = RequestMethod.POST)
	public String cateadd(@ModelAttribute("categoryobj")Category ca,Model model,HttpServletRequest request) {
		categoryDAO.save(ca);
		model.addAttribute("loggin","true");
		model.addAttribute("cate","true");
		return "index";
	}

	@RequestMapping(value = "/managecategory", params = "update", method = RequestMethod.POST)
	public String cateupdate(@ModelAttribute("categoryobj")Category ca,Model model) {
		categoryDAO.update(ca);
		model.addAttribute("loggin","true");
		model.addAttribute("cate","true");
		return "index";
	}
	
	@RequestMapping(value = "/managecategory", params = "delete", method = RequestMethod.GET)
	public String catedelete(@ModelAttribute("categoryobj")Category ca,Model model) {
		categoryDAO.delete(ca);
		model.addAttribute("loggin","true");
		model.addAttribute("cate","true");
		return "index";
	}

	@RequestMapping(value = "/managecategory", params = "view", method = RequestMethod.GET)
	public String cateview(@ModelAttribute("categoryobj")Category ca,Model model) {
		categoryDAO.get("ca");
		model.addAttribute("loggin","true");
		model.addAttribute("cate","true");
		return "index";
	}
	
	@RequestMapping(value = "/managecategory", params = "viewall", method = RequestMethod.GET)
	public String cateviewall(@ModelAttribute("categoryobj")Category ca,Model model) {
		categoryDAO.list();
		model.addAttribute("loggin","true");
		model.addAttribute("cate","true");
		return "index";
	}

}
