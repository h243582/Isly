package org.example.pojo;

import lombok.Data;

import java.io.Serializable;

@Data
public class Destination implements Serializable {
	private int desid;
	private String name;
	private String type;
	private double price;
	private String desname;
	private String src;
	private String detail;
}
