package com.main.Repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.main.model.Account;
import com.main.model.User;

public interface UserRepositoryIntf extends CrudRepository<User,Integer>  {

	User findUserById(int id);

	User findUserByNameAndPassword(String name, String passwd);
     
	void save(Account account);


	

}
 