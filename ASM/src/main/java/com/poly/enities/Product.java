package com.poly.enities;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonIgnore;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@SuppressWarnings("serial")
@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "Products")
public class Product implements Serializable{
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	private Long id;
	private String name;
	private Float price;
	@Temporal(TemporalType.DATE)
	@Column(name = "createdate")
	@DateTimeFormat(pattern = "dd-MM-yyyy")
	private Date createDate;
	private Boolean available;
	@Column(name = "brandid", insertable = false, updatable = false)
	private String brandid;
	@ManyToOne
	@JoinColumn(name = "brandid")
	Brand brand;
	private String images;
	@JsonIgnore
	@OneToMany(mappedBy = "product")
	List<OrderDetail> orderDetails;
	String description;
	@JsonIgnore	
	@OneToMany(mappedBy = "product")
	List<ProductCategory> productCategories;
}
