package jp.ken.dvdrental.controller;

import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.http.HttpSession;

import org.apache.taglibs.standard.tag.common.core.RemoveTag;
import org.springframework.beans.BeanUtils;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import jp.ken.dvdrental.dao.ProductDAO;
import jp.ken.dvdrental.entity.Product;
import jp.ken.dvdrental.model.ProductModel;

@Controller
public class CartController {
	
	
	private static ApplicationContext context = 
			new ClassPathXmlApplicationContext("spring.xml");
	
	@SuppressWarnings("unchecked")
	private static ProductDAO<Product> productDAO =
	(ProductDAO<Product>)context.getBean("productDAO");
	
	
	//カート表示
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/cart",method=RequestMethod.GET)
	public String showCart(Model model,HttpSession httpSession) {
		Map<Product,Integer>cart=(Map<Product,Integer>)httpSession.getAttribute("cart");
		
		
		if(cart!=null) {
			return"cartPage";
		}else{
			
			model.addAttribute("message1","レンタルにいきましょう。");
			return"cartPage";
		}
	}	
		
	//カートから削除する
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/cart",method=RequestMethod.GET,params="pId")
	public String cartRemove(@RequestParam int pId, Model model,HttpSession httpSession) {
		Product product= productDAO.idSearch(pId);
	
		Map<Product,Integer>cart=(Map<Product,Integer>)httpSession.getAttribute("cart");
		if(cart!=null) {
		 cart.remove(product);
		
			}
	//★	
		int totalNum=0;
		for(Entry<Product,Integer> entry:cart.entrySet()) {
			System.out.println(entry.getKey()+"数量"+entry.getValue());
			totalNum += entry.getValue();
		}
		httpSession.setAttribute("cart", cart);
		httpSession.setAttribute("totalNum", totalNum);
		System.out.println(cart);
		return"redirect:/cart";
	
	}		
		
		
		
	
	//カートに追加
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/cart",method=RequestMethod.GET,params="paramId")
	public String addCart(@RequestParam int paramId,Model model,HttpSession httpSession) {
		Product product= productDAO.idSearch(paramId);
		ProductModel pModel = new ProductModel();
		BeanUtils.copyProperties(product, pModel);
		//pModel.setProduct_Id(new Integer(paramId).toString());
		model.addAttribute("productModel",pModel);
		
		Map<Product,Integer>cart=(Map<Product,Integer>)httpSession.getAttribute("cart");
		if(cart==null) {
			cart=new HashMap<Product,Integer>();
			
			cart.put(product,1);
			
		}else {
			
			if(cart.containsKey(product)) {
				cart.put(product,cart.get(product)+1);
			}else {
			cart.put(product,1);
		}
		}
		
		//データの送信チェック為
		int totalNum=0;
		for(Entry<Product,Integer> entry:cart.entrySet()) {
			System.out.println(entry.getKey()+"数量"+entry.getValue());
			totalNum += entry.getValue();
		}
		 
		
		httpSession.setAttribute("cart", cart);
		httpSession.setAttribute("totalNum", totalNum);
		return"detailPage";
		
		
	}
}
		