package com.main.controller;

import java.time.LocalDateTime;
import java.util.Base64;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.main.model.Account;
import com.main.model.Beneficiery;
import com.main.model.User;
import com.main.service.UserServIntf;

@Controller
public class MainController {

	@Autowired
	UserServIntf service;
	
	@RequestMapping("/register")
	public String display(@ModelAttribute("user") User user,@ModelAttribute("account") Account account){
		
		return "Registration";
	}
	
	@RequestMapping("/save")
	public ModelAndView saveUser(@ModelAttribute("user") User user,@ModelAttribute("account") Account account){
		service.saveUser(user);
		service.saveAccount(account);
		return new ModelAndView("redirect:/login");
	}
	
	@RequestMapping("/login")
	public ModelAndView loginUser(@ModelAttribute("user") User user){
		
		return new ModelAndView("LoginPage");
	}
	
	@RequestMapping("/checkUser")
	public ModelAndView checkUser(HttpServletRequest req,@ModelAttribute("user") User user){
		String name = req.getParameter("name");
		String passwd = Base64.getEncoder().encodeToString(req.getParameter("password").getBytes());
		User u=service.checkUser(name,passwd);
	
		
		if(u.getId()!=0){
			HttpSession session=req.getSession();
			session.setAttribute("user",u);
			return new ModelAndView("redirect:/AccountSummary");
		}
		else{
			return new ModelAndView("LoginPage");
		}
		
	}
	
	@RequestMapping("/success")
	public ModelAndView listUser(@ModelAttribute("user") User user){
		List<User> ls=service.listUser();
		return new ModelAndView("viewUser","list",ls);
	}
	
	@RequestMapping("/Edit")
	public ModelAndView editUser(@ModelAttribute("user") User user,HttpServletRequest req){
		List<User> ls=service.listUser();
		int u_id=Integer.parseInt(req.getParameter("id"));
		
		User u=service.getuser(u_id);
	ModelAndView m= new ModelAndView("Edit","list",ls);
	m.addObject("user",u);
		return  m;
	}

	@RequestMapping("/Update")
	public ModelAndView updateUser(@ModelAttribute("user") User user){
		
		service.updateUser(user);
		return new ModelAndView("redirect:/success");
	}
	
	@RequestMapping("/createAccount")
	public ModelAndView createAccout(@ModelAttribute("user") User user,Account account,HttpServletRequest req){
		
	
	
		account.setActype("Saving");
		account.setBalance(20000.0);
		account.setDate(LocalDateTime.now());
		account.setUser(user);
	   service.save(account);

		return new ModelAndView("redirect:/AccountSummary");
	}
	
	@RequestMapping("/addBeneficiery")
	public ModelAndView addBeneficiery(@ModelAttribute("emp") User user){
		
		
		return new ModelAndView("SelectBenefType");
		
	}
	@RequestMapping("/withinBank")
	public ModelAndView sameBankBeneficiery(@ModelAttribute("beneficiery") Beneficiery beneficiery){
		
		String str="IFSC No Needed";
		
		return new ModelAndView("AddBeneficiery","str",str);
		
	}
	@RequestMapping("/OtherBank")
	public ModelAndView otherBankBeneficiery(@ModelAttribute("beneficiery") Beneficiery beneficiery){
		
		String str="IFSC  Needed";
		return new ModelAndView("AddBeneficiery","str",str);
		
	}
	@RequestMapping("/otherBank")
	public ModelAndView otherBankBeneficierySave(HttpServletRequest req,@ModelAttribute("beneficiery") Beneficiery beneficiery){
		HttpSession session=req.getSession();
		User user=(User) session.getAttribute("user");
		System.out.println(user.getId());
		beneficiery.setUser(user);
		service.saveBeneficiery(beneficiery);
		return new ModelAndView("AddBeneficiery");
		
	}
	@RequestMapping("/add")
	public ModelAndView deleteEmployee(@ModelAttribute("emp") User user){
		
		service.deleteUser(user);
		return new ModelAndView("redirect:/view");
		
	}
	
	@RequestMapping("/AccountSummary")
	public ModelAndView accountSummary(@ModelAttribute("emp") User user,HttpServletRequest req){
		HttpSession session =req.getSession();
		User user1=(User) session.getAttribute("user");
		Account ac=service.getAccountDetails(user1.getId(),"Saving");
		if(ac!=null){
			return new ModelAndView("Welcome","acc",ac);
		}
		else{
			String str="No Account Mapped";
			System.out.println("Summary"+str);
			return new ModelAndView("Welcome","str",str);
				
		}
	
		
	}
}
