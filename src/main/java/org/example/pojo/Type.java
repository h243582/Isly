package org.example.pojo;

import lombok.Data;

import java.io.Serializable;

@Data
public class Type implements Serializable {
	private String typename;
	private String typesrc;

}
