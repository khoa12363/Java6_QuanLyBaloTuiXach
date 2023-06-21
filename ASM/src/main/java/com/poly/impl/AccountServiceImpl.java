package com.poly.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.dao.AccountDao;
import com.poly.dao.RoleDao;
import com.poly.dao.RoleDetailDao;
import com.poly.enities.Account;
import com.poly.enities.Role;
import com.poly.enities.RoleDetail;
import com.poly.interfaces.AccountService;

@Service
public class AccountServiceImpl implements AccountService{
	@Autowired AccountDao aRepo;
	@Autowired RoleDao rRepo;
	@Autowired RoleDetailDao rdRepo;

	@Override
	public List<Account> findAll() {
		return aRepo.findAll();
	}

	@Override
	public Account findByUsername(String username) {
		return aRepo.findById(username).get();
	}

	@Override
	public Account save(Account account) {
		return aRepo.save(account);
	}

	@Override
	public void deleteByUsername(String username) {
		aRepo.deleteById(username);
	}

	@Override
	public boolean existsById(String username) {
		return aRepo.existsById(username);
	}

	@Override
	public List<Account> findByFullname(String fullname) {
		return aRepo.findByFullname(fullname);
	}

	@Override
	public List<Role> findAllRole() {
		return rRepo.findAll();
	}

	@Override
	public List<RoleDetail> findAllAuthorities() {
		return rdRepo.findAll();
	}

	@Override
	public RoleDetail saveRoleDetail(RoleDetail authority) {
		return rdRepo.save(authority);
	}

	@Override
	public void deleteRoleDetail(Integer id) {
		rdRepo.deleteById(id);
	}

	@Override
	public List<Account> findByUsernameLike(String username) {
		return aRepo.findByUsernameLike(username);
	}

	@Override
	public Long countCustomer(String role) {
		return aRepo.countCustomer(role);
	}
	@Override
	public Account findByEmail(String email) {
		return aRepo.findByEmail(email);
	}

}	
