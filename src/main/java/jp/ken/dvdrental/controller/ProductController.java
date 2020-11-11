package jp.ken.dvdrental.controller;


import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import jp.ken.dvdrental.dao.ProductDAO;
import jp.ken.dvdrental.entity.Product;

import jp.ken.dvdrental.model.DvdRentalModel;
import jp.ken.dvdrental.model.ProductModel;


@Controller
public class ProductController {
	
	private static ApplicationContext context = 
			new ClassPathXmlApplicationContext("spring.xml");
	
	@SuppressWarnings("unchecked")
	private static ProductDAO<Product> productDAO =
	(ProductDAO<Product>)context.getBean("productDAO");
	
	
	
	
		//ホームページ
		@RequestMapping(value="/index",method=RequestMethod.GET)
		public String menu() {
			return "index";
		}

	
	
	//あいまい検索　
	//@RequestMapping(value="/head",method=RequestMethod.GET)
	//public String toVagueList( Model model) {
		 // DvdRentalModel dModel= new DvdRentalModel();
		 //model.addAttribute("dvdRentalModel", dModel);
		// return"header";
	//}
	
	//あいまい検索
	@RequestMapping(value="/head",method=RequestMethod.POST)
	public String vagueList(@Validated @ModelAttribute DvdRentalModel vModel,BindingResult result , Model model) {
		if(result.hasErrors()) {
			return "dvdvagueList";
		}else {
			List<Product> list= productDAO.vagueNameList(vModel.getVagueFiled());
			model.addAttribute("title", "検査結果");
			model.addAttribute("vagueList", list);
			return "dvdvagueList";
		}
		
	}
	
	//検査結果詳細
	@RequestMapping(value="/detail",method=RequestMethod.GET)
	public String detailInfo(@RequestParam int paramId,Model model) {
		Product product= productDAO.idSearch(paramId);
		ProductModel pModel = new ProductModel();
		BeanUtils.copyProperties(product, pModel);
		System.out.println(product);
		System.out.println(pModel);
		//pModel.setProduct_Id(new Integer(paramId).toString());
		model.addAttribute("productModel",pModel);
		
		return"detailPage";
	}
	
	//監督／アーティスト名検索
	@RequestMapping(value="/dirSearch",method=RequestMethod.GET)
	public String director(@RequestParam String dir,DvdRentalModel vModel,Model model) {
		List<Product> list= productDAO.directorSearch(dir);
		model.addAttribute("title", "検査結果");
		model.addAttribute("vagueList", list);
		return "dvdvagueList";
	}
	//商品名検索
	@RequestMapping(value="/pNameSearch",method=RequestMethod.GET)
	public String productName(@RequestParam String ename,Model model) {
		Product product= productDAO.nameSearch(ename);
		ProductModel pModel = new ProductModel();
		BeanUtils.copyProperties(product, pModel);
		//pModel.setProduct_Id(new Integer(paramId).toString());
		model.addAttribute("productModel",pModel);
		return"detailPage";
	}


}
