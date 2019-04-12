package com.main.Dao;

import java.util.Base64;
import java.util.Iterator;
import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.main.Repository.AccountRepo;
import com.main.Repository.BeneficieryRepo;
import com.main.Repository.UserRepositoryIntf;
import com.main.model.Account;
import com.main.model.Beneficiery;
import com.main.model.User;

@Repository
public class UserDaoImpl implements UserDaoIntf {

	@Autowired
	BeneficieryRepo repos;
	@Autowired
	AccountRepo repo;
	@Autowired
	UserRepositoryIntf repository;

	public void saveUser(User user) {
		user.setPassword(Base64.getEncoder().encodeToString(user.getPassword().getBytes()));
		repository.save(user);
		
	}


	public List<User> listUser() {
		List<User> ls=(List<User>) repository.findAll();
		
		return ls;
	}



	public User getUser(int uId) {
		return repository.findUserById(uId);
	}



	public void updateUser(User user) {
		repository.save(user);
	}



	public void deleteUser(User user) {
		repository.delete(user);
		
	}


	


	public User checkUser(String name, String passwd) {
		
		return repository.findUserByNameAndPassword(name,passwd);
	}



	public void save(Account account) {
		repository.save(account);
		
	}



	public void saveAccount(Account account) {
		repository.save(account);
		
	}



	public Account getAccountDetails(int id, String string) {
		
		return repo.findByActype(id,string);
	}


	public void saveBeneficiery(Beneficiery beneficiery) {
		
		repos.save(beneficiery);
		
	}




}
