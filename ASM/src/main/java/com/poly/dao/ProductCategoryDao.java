package com.poly.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.poly.enities.ProductCategory;

@Repository
public interface ProductCategoryDao extends JpaRepository<ProductCategory, Integer>{
	@Query("DELETE ProductCategory pc WHERE pc.product.id = :id")
	void deleteByProductId(@Param("id") Long id);
	
	@Query("SELECT pc FROM ProductCategory pc WHERE pc.product.id = :id")
	List<ProductCategory> findByProductId(@Param("id") Long id);


}
