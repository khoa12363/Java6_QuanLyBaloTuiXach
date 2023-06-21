package com.poly.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.poly.enities.Order;
import com.poly.enities.OrderDetail;
import com.poly.enities.Product;

@Repository
public interface OrderDetailDao extends JpaRepository<OrderDetail, Long>{
	 OrderDetail findByOrderAndProduct(Order order, Product product);
	   @Modifying
	    @Query("DELETE FROM OrderDetail od WHERE od.product.id = :productId")
	    void deleteByProductId(@Param("productId") Long productId);
}
