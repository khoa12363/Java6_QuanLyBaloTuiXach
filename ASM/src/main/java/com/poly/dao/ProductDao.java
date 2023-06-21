package com.poly.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.poly.enities.OrderDetail;
import com.poly.enities.Product;

@Repository
public interface ProductDao extends JpaRepository<Product,Long>{
	@Query("SELECT p FROM Product p WHERE p.name LIKE :name")
	public List<Product> findByName(@Param("name") String name);
	
	@Query("SELECT p FROM Product p WHERE p.name LIKE :name")
	public Page<Product> findByKeyword(@Param("name") String name, Pageable pageable);
	
//	@Query("SELECT DISTINCT p FROM Product p, ProductCategory pc WHERE p.id = pc.product.id AND pc.category.id = :cid AND p.name LIKE :name")
//	public Page<Product> findByCategory(@Param("name") String name, @Param("cid") String cid, Pageable pageable);
	
	@Query("SELECT DISTINCT p FROM Product p, ProductCategory pc WHERE p.id = pc.product.id AND pc.category.id = :cid")
	public Page<Product> findByCategory(@Param("cid") String cid, Pageable pageable);
	
	@Query("SELECT p FROM Product p WHERE p.brand.id = :bid")
	public Page<Product> findByBrand(@Param("bid") String bid, Pageable pageable);
	
	@Query("SELECT p FROM Product p WHERE p.brand.id IN :bid")
	public Page<Product> findByListBrand(@Param("bid") List<String> bid, Pageable pageable); 
	
	public Page<Product> findByPriceLessThanEqual(Double price, Pageable pageable);
	Page<Product> findAllByNameLike(String keywords, Pageable pageable);
	
	public Page<Product> findByPriceBetween(Double min, Double max, Pageable pageable);
	
	public Page<Product> findByPriceGreaterThanEqual(Double price, Pageable pageable);

	@Query("SELECT DISTINCT p FROM Product p, ProductCategory pc WHERE p.id = pc.product.id AND pc.category.id IN :cid")
	public Page<Product> findByListCategory(@Param("cid") List<String> cid, Pageable pageable);
	Page<Product> findAllByPriceBetween(double minPrice, double maxPrice, Pageable pageable);

	
	
}