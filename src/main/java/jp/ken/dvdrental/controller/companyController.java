package jp.ken.dvdrental.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("company")
public class companyController {
	
	@RequestMapping(method=RequestMethod.GET)
	public String menu() {
		return "company";
	}

}
