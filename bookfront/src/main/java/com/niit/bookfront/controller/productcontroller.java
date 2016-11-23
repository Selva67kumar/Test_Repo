package com.niit.bookfront.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.bookback.dao.ProductDAO;
import com.niit.bookback.model.Product;

public class productcontroller {
	
	@Autowired
	ProductDAO prod;
	
	@ModelAttribute("productobj")
	public Product getProduct(){
		return new Product();		
	}
	
	
	@RequestMapping(value = "/manageproduct", params = "add", method = RequestMethod.POST)
	public String cateadd(@ModelAttribute("productobj")Product pro,Model model) {
		prod.save(pro);
		model.addAttribute("loggin","true");
		model.addAttribute("pro","true");
		return "index";
	}

	@RequestMapping(value = "/manageproduct", params = "update", method = RequestMethod.POST)
	public String cateupdate(@ModelAttribute("productobj")Product pro,Model model) {
		prod.update(pro);
		model.addAttribute("loggin","true");
		model.addAttribute("pro","true");
		return "index";
	}
	
	@RequestMapping(value = "/manageproduct", params = "delete", method = RequestMethod.POST)
	public String catedelete(@ModelAttribute("productobj")Product pro,Model model) {
		prod.delete(pro);
		model.addAttribute("loggin","true");
		model.addAttribute("pro","true");
		return "index";
	}

	@RequestMapping(value = "/manageproduct", params = "view", method = RequestMethod.GET)
	public String cateview(@ModelAttribute("productobj")Product pro,Model model) {
		prod.get("");
		model.addAttribute("loggin","true");
		model.addAttribute("pro","true");
		return "index";
	}
	
	@RequestMapping(value = "/manageproduct", params = "viewall", method = RequestMethod.POST)
	public String cateviewall(@ModelAttribute("productobj")Product pro,Model model) {
		prod.list();
		model.addAttribute("loggin","true");
		model.addAttribute("pro","true");
		return "index";
	}

	

}
