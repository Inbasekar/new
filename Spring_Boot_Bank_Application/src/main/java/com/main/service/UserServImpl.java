package com.main.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.main.Dao.UserDaoIntf;
import com.main.model.Account;
import com.main.model.Beneficiery;
import com.main.model.User;

@Service
@Transactional
public class UserServImpl implements UserServIntf {

	@Autowired
	UserDaoIntf dao;
	

	public void saveUser(User user) {
		dao.saveUser(user);
		
	}



	public List<User> listUser() {
		 List<User> ls=dao.listUser();
		return ls;
	}




	public User getuser(int uId) {
	User user=dao.getUser(uId);
		return user;
	}




	public void updateUser(User user) {
	dao.updateUser(user);
		
	}




	public void deleteUser(User user) {
		dao.deleteUser(user);
		
	}




	public User checkUser(String name, String passwd) {
		
		return dao.checkUser(name,passwd);
	}




	public void save(Account account) {
	dao.save(account);
		
	}




	public void saveAccount(Account account) {
	dao.saveAccount(account);
		
	}




	public Account getAccountDetails(int id, String string) {
		
		return dao.getAccountDetails(id,string);
	}




	public void saveBeneficiery(Beneficiery beneficiery) {
		dao.saveBeneficiery(beneficiery);
		
	}




}
