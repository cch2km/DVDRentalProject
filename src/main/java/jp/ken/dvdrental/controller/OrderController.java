package jp.ken.dvdrental.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import jp.ken.dvdrental.dao.OrderRecordDAO;
import jp.ken.dvdrental.dao.ProductDAO;
import jp.ken.dvdrental.entity.OrderRecord;
import jp.ken.dvdrental.entity.Item;
import jp.ken.dvdrental.entity.Product;
import jp.ken.dvdrental.entity.User;

@Controller
public class OrderController {
	
	private static ApplicationContext context = 
			new ClassPathXmlApplicationContext("spring.xml");
	
	@SuppressWarnings("unchecked")
	private static OrderRecordDAO<OrderRecord> orderRecordDAO =
	(OrderRecordDAO<OrderRecord>)context.getBean("orderRecordDAO");
	
	@SuppressWarnings("unchecked")
	private static ProductDAO<Product> productDAO =
	(ProductDAO<Product>)context.getBean("productDAO");
	
	
	/*
	@SuppressWarnings("unchecked")
	private static ItemDAO<Item> itemDAO=
	(ItemDAO<Item>)context.getBean("itemDAO");
	*/
	
	
	

	
	// オーダーリスト表示
	@RequestMapping(value="order",method=RequestMethod.GET)
	public String order(HttpSession httpSession) {
		User user=(User)httpSession.getAttribute("User");
		if(user!=null) {
			return"orderPage";
		}else {
			return"redirect:/login";
		}
		
	}
		
		
	// オーダー確認
	@SuppressWarnings("unchecked")
	@RequestMapping(value="confirm",method=RequestMethod.GET)
	public String confirm(Model model,HttpSession httpSession) {
		User user= (User) httpSession.getAttribute("User");
		if(user== null) {
			return"redirect:/login";
		}
		Map<Product,Integer> cart =(Map<Product,Integer>)httpSession.getAttribute("cart");
		//for(Entry<Product,Integer> entry:cart.entrySet()) {
			int num=0;
			
			
			
			if(cart== null || cart.size()==0){
				return "redirect:/cart";
			}else {
				for(Entry<Product,Integer> entry:cart.entrySet()) {
					System.out.println(entry.getKey()+"数量"+entry.getValue());
				
					num += entry.getValue();
					System.out.println("数："+ num);
					Product product = productDAO.idSearch(entry.getKey().getProduct_Id());
				if(entry.getValue()>product.getAccount()) {
					model.addAttribute("message","在庫商品が不足です。");
					return "cartPage";
				}

		}
			
		}
				
		OrderRecord order = new OrderRecord();
		
		
		
		//order.setId(UUID.randomUUID().toString());
		order.setOrderTime(new Date());
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.DAY_OF_MONTH,+14);
		Date date= cal.getTime();
		
		order.setReturnTime(date);
//		order.setUser(user);
		order.setUser_Id(user.getUser_Id());
		
				
		
		List<Item> items = new ArrayList<Item>();
		
		
		int totalNum=0;
		
		for(Entry<Product,Integer> entry:cart.entrySet()) {
			Item item=new Item();
			
			item.setNum(entry.getValue());
			
			item.setProduct(entry.getKey());
			
			item.setOrder(order);
			
			totalNum += entry.getValue();
			
			
			//itemDAO.insertItemData(item);
			
			items.add(item);
			
		}
		
		
		//order.setItems(items);
		
		//オーダートータル枚数
		order.setTotal(totalNum);
		
		if(user.getPlan().equals("お試しプラン")& totalNum>2) {
			model.addAttribute("message2","上限レンタル枚数は2枚までです。");
			return "cartPage"; 
		}if (user.getPlan().equals("Bronzeプラン")& totalNum>6) {
			model.addAttribute("message3","上限レンタル枚数は6枚までです。");
			return "cartPage"; 
		
		}if (user.getPlan().equals("Silverプラン")& totalNum>12) {
			model.addAttribute("message3","上限レンタル枚数は12枚までです。");
			return "cartPage"; 
		}
		
		//データ送信確認用
		System.out.println("------------");
		System.out.println("オーダーリスト");
		System.out.println(order);
		
		System.out.println("オーダー詳細");
		for(Item item: items) {
			System.out.println("商品名:" + item.getProduct().getProduct_name()+"数量"+item.getNum());
		}
		
		
		
		//オーダー履歴保存
		if(orderRecordDAO.insertOrderRecordData(order)){
			
			//オーダー後在庫数変更
			for(Item item: items) {
				
				Product product = productDAO.idSearch(item.getProduct().getProduct_Id());
				product.setAccount(product.getAccount()-item.getNum());
				productDAO.updateNum(product);
				
			}
			httpSession.removeAttribute("cart");
			return"end";
			
		}else {
			
			return"filed";
		}
		
	}
	
		
	
		
		
	//レンタル履歴リスト
	@RequestMapping(value="/orderList",method=RequestMethod.GET)
	public String order(@RequestParam int userid,Model model,HttpSession httpSession) {
		User user=(User)httpSession.getAttribute("User");
		if(user!=null) {
			
			List<OrderRecord> list= orderRecordDAO.findOrderByUserId(userid);
			model.addAttribute("olist", "履歴リスト");
			model.addAttribute("rentalList", list);
			return "orderRecord";
		}else {
			return "redirect:/login" ;
		}
		
	}		
	
	//レンタル履歴を削除
	
		@RequestMapping(value="/deleteRecord",method=RequestMethod.GET)
		public String delete(@RequestParam int orderId,Model model,HttpSession httpSession) {
			
			User user=(User)httpSession.getAttribute("User");
			if(user==null) {
				return "redirect:/login";
			}else{
					
				if(orderRecordDAO.deleteRecord(orderId)==1) {
			
					return "deleteRecord";
				
			}else {
				//model.addAttribute("errorMessage", "レンタル履歴記録が存在しません");
				return "orderRecord";
			}
			}
			
		}
	}





		
		
		
		
		
