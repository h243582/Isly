package org.example.dao;

import org.apache.ibatis.annotations.Mapper;
import org.example.pojo.Type;

import java.util.List;
import java.util.Vector;


@Mapper
public interface TypeInterface {
	public List<Type> getType();
	public int DeleteByTypeName(String type_name);
	public int Insert(Type type);
	public int UpdateSrcByTypeName(String type_name,String src);
}