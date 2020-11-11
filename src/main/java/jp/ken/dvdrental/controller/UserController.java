package jp.ken.dvdrental.controller;



import javax.servlet.http.HttpSession;


import javax.validation.GroupSequence;



import javax.validation.groups.Default;

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

import jp.ken.dvdrental.dao.UserDAO;
import jp.ken.dvdrental.entity.User;
import jp.ken.dvdrental.model.ErrorCheckGroup1;
import jp.ken.dvdrental.model.UserModel;

@Controller

public class UserController {
	
	private static ApplicationContext context = 
			new ClassPathXmlApplicationContext("spring.xml");
	
	@SuppressWarnings("unchecked")
	private static UserDAO<User> userDAO =
	(UserDAO<User>)context.getBean("userDAO");
	
	@GroupSequence({Default.class,ErrorCheckGroup1.class})
	interface GroupOrder{}

	
	//新規登録
	@RequestMapping(value="/regist",method=RequestMethod.GET)
	public String toRegist(Model model) {
		UserModel uModel = new UserModel();
		model.addAttribute("userModel", uModel);
		return "registUserData";
	}
	
	//新規登録
	@RequestMapping(value="/regist",method=RequestMethod.POST)
	public String regist(@Validated(GroupOrder.class)
	@ModelAttribute UserModel uModel,
	BindingResult result,Model model){
		System.out.println(uModel);
		if(result.hasErrors()) {
			model.addAttribute("errorMessage", "エラーが発生しています");
			return"registUserData";
		}else{
			User user = new User();
			BeanUtils.copyProperties(uModel, user);
			if(userDAO.insertUserData(user)) {
				//httpSession.setAttribute("User", user);
				return"redirect:/login";
			}else {
				model.addAttribute("errorMessage", "メールアドレスが存在します");
				return "registUserData";
			}
			
		}
		
	}
	
	//ログイン
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String toLogin(@ModelAttribute UserModel uModel, Model model) {
		model.addAttribute("userModel", uModel);
		return "loginForm";
	}
	
	
	@RequestMapping(value="/mypage",method=RequestMethod.GET)
	public String toMypage(@ModelAttribute UserModel uModel, HttpSession httpSession) {
		User user=(User)httpSession.getAttribute("User");
		if(user==null) {
			return"redirect:/login";
		}else {
			return"myPage";
		}
			
}
	
	//ログイン
	@RequestMapping(value="/login",method = RequestMethod.POST)
    public String Login
    (@Validated(GroupOrder.class) @ModelAttribute UserModel uModel,
    BindingResult result,Model model, HttpSession httpSession) {
		
        User user = userDAO.login(uModel.getEmail(),uModel.getPassword());
        
        
         if (user == null) {
        	model.addAttribute("errorMessage","メールアドレスもしくはパスワードが間違っています。");
            return"loginForm";
           
        }else {
        	System.out.println(user);
        	model.addAttribute("userModel", uModel);
        	httpSession.setAttribute("User", user);
        	
              return "index";
        }
	}	
	
	
	//ログアウト
	@RequestMapping(value="/logout",method=RequestMethod.GET)
	public String logOut(HttpSession httpSession) {
	User user=(User)httpSession.getAttribute("User");
		if(user!=null) {
			httpSession.invalidate();
			return "redirect:/login";
		}else {
			
			return"redirect:/login";
		}
		
	}

	
	//お客様情報
		@RequestMapping(value="/myAccount",method=RequestMethod.GET)
		public String toMyAccount(@RequestParam int paramId,Model model,HttpSession httpSession) {
			
			User user=(User)httpSession.getAttribute("User");
			if(user==null) {
					return"redirect:/login";
			}else{
				User user1= userDAO.getById(paramId);
			
			UserModel uModel = new UserModel();
			BeanUtils.copyProperties(user1, uModel);
			uModel.setUser_Id(new Integer(paramId).toString());
			model.addAttribute("userModel",uModel);
			return"myAccount";
			
			}
		}
	
		//情報変更ペイジー表示
		@RequestMapping(value="/edit",method=RequestMethod.GET)
		public String toEdit(@RequestParam int paramId,Model model,HttpSession httpSession) {
			
			User user=(User)httpSession.getAttribute("User");
			if(user==null) {
					return"redirect:/login";
			}else{
			User user1= userDAO.getById(paramId);
			UserModel uModel = new UserModel();
			BeanUtils.copyProperties(user1, uModel);
			uModel.setUser_Id(new Integer(paramId).toString());
			model.addAttribute("userModel",uModel);
			return"editAccount";
			}
		}
	
	
	//会員情報変更
	@RequestMapping(value="/edit",method=RequestMethod.POST,params="edit")
	public String edit(@RequestParam int user_Id,@Validated(GroupOrder.class)
	@ModelAttribute UserModel uModel,BindingResult result,Model model) {
		/*if(result.hasErrors()) {
			uModel.setUser_Id(new Integer(user_Id).toString());
			model.addAttribute("userModel", uModel);
			return"editAccount";
		}else {*/
			User user= new User();
			BeanUtils.copyProperties(uModel, user);
			user.setUser_id(Integer.parseInt(uModel.getUser_Id()));
			if(userDAO.updateUser(user)==1) {
				return"myAccount";
			}else {
				model.addAttribute("errorMessage", "SQLエラーが発生しています");
				return"editAccount";
			}
		}
	
			//退会
			@RequestMapping(value="/delete",method=RequestMethod.GET)
			public String toDelete(@RequestParam int paramId,Model model,HttpSession httpSession) {
				User user=(User)httpSession.getAttribute("User");
				if(user!=null) {
					 user= userDAO.getById(paramId);
					UserModel uModel = new UserModel();
					BeanUtils.copyProperties(user, uModel);
					uModel.setUser_Id(new Integer(paramId).toString());
					model.addAttribute("userModel",uModel);	
					return"deleteUser";
				}else{
				
			
				return"redirect:/login";
				}
		}
			//退会
			@RequestMapping(value="/delete",method=RequestMethod.POST)
			public String delete(@RequestParam int user_Id,Model model,HttpSession httpSession) {
				User user=(User)httpSession.getAttribute("User");
				if(user==null) {
						return"redirect:/login";
				}else{
				if(userDAO.deleteUser(user_Id)==1) {
					httpSession.invalidate();
					return "redirect:/regist";
			}else {
				model.addAttribute("errorMessage", "SQLメンテナンス中。。。。");
				return"deleteUser";
			}
		}
			}	
		}               