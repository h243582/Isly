package org.example.pojo;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@Data
public class Order implements Serializable {
	private String orderno;
	private String type;
	private String mail;
	private double price;
	private double totalprice;
	private int number;
	private String name;
	private Date date;
	private int payflag;
	private int discount;
	private String src;

	
}
