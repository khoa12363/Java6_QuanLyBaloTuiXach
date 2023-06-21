package com.poly.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.poly.enities.Account;

@Repository
public interface AccountDao extends JpaRepository<Account, String>{
	@Query("SELECT a FROM Account a WHERE a.fullname LIKE :name")
	List<Account> findByFullname(@Param("name") String fullname);
	

	@Query("SELECT a FROM Account a WHERE a.username LIKE ?1")
	Page<Account> findByUsernameLike(String keywords, Pageable pageable);
	
	@Query("SELECT COUNT(a) FROM Account a, RoleDetail rd WHERE a.username = rd.account.username AND rd.role.role = :role")
	Long countCustomer(@Param("role") String role);
	
	@Query("SELECT a FROM Account a WHERE a.username LIKE ?1")
    public List<Account> search(String keyword);
	Account findByEmail(String email);
	
	Account findByUsername(String username);

}
