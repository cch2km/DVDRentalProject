package jp.ken.dvdrental.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("search")
public class searchController {
	
	@RequestMapping(method=RequestMethod.GET)
	public String menu() {
		return "search";
	}

}
