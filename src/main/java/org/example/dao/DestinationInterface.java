package org.example.dao;

import java.util.List;
import java.util.Vector;

import org.apache.ibatis.annotations.Mapper;
import org.example.pojo.Destination;
@Mapper
public interface DestinationInterface {
	public Destination getDestinationByDesId(int desId);
	public List<Destination> getDestinationByType(String type);


	public List<Destination> getDestinationByCity(String name);


	public int updatePriceById(int Id,double price);
	public int updatenameById(int Id,String name);
	public int updatedetailById(int Id,String detail);
	public int updatesrcById(int Id,String src);
	public int deleteDestinationById(int Id);
	public int insertDestinationById(Destination destination);
}
