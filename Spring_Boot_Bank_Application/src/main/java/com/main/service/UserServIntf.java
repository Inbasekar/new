package com.main.service;

import java.util.List;

import com.main.model.Account;
import com.main.model.Beneficiery;
import com.main.model.User;

public interface UserServIntf {

	void saveUser(User user);

	List<User> listUser();

	User getuser(int uId);

	void updateUser(User user);

	void deleteUser(User user);

	User checkUser(String name, String passwd);

	void save(Account account);

	void saveAccount(Account account);

	Account getAccountDetails(int id, String string);

	void saveBeneficiery(Beneficiery beneficiery);



}
