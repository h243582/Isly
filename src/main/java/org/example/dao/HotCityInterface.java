package org.example.dao;

import java.util.List;
import java.util.Vector;

import org.apache.ibatis.annotations.Mapper;
import org.example.pojo.HotCity;
@Mapper
public interface HotCityInterface {


	public List<HotCity> getHotCity();


	public int InsertHotcity(HotCity hotCity);


	public int DeleteByname(String cityname);
}