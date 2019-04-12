package com.main.Repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.main.model.Account;

public interface AccountRepo extends CrudRepository<Account,Integer>{
	@Query(value="select * from account t where uid=?1 and t.actype=?2",nativeQuery=true)
	Account findByActype(int id, String string);
}
