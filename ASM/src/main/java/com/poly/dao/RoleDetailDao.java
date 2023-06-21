package com.poly.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.poly.enities.RoleDetail;

@Repository
public interface RoleDetailDao extends JpaRepository<RoleDetail, Integer>{

}
