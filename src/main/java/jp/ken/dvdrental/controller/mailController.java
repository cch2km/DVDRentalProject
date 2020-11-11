package jp.ken.dvdrental.controller;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import jp.ken.dvdrental.model.MailDataModel;
import jp.ken.dvdrental.model.MailModel;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class mailController {
	
	@RequestMapping(value="/mailformConf", method=RequestMethod.POST)
	public String confirm(@ModelAttribute MailModel mModel, Model model) {
		model.addAttribute("name", mModel.getName());
		model.addAttribute("kana", mModel.getKana());
		model.addAttribute("age", mModel.getAge());
		
		String tmpGender = mModel.getGender();
		if (tmpGender.equals("man")) {
			model.addAttribute("gender", "男");
		} else {
			model.addAttribute("gender", "女");
		}
		
		model.addAttribute("zipcode1", mModel.getZipcode1());
		model.addAttribute("zipcode2", mModel.getZipcode2());
		model.addAttribute("ken", mModel.getKen());
		model.addAttribute("address", mModel.getAddress());
		model.addAttribute("tel", mModel.getTel());
		model.addAttribute("kind", mModel.getKind());
		model.addAttribute("color", mModel.getColor());
		return "mailformConfirm";
	}
}