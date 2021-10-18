package org.example.dao;

import java.util.List;
import java.util.Vector;

import org.apache.ibatis.annotations.Mapper;
import org.example.pojo.Order;
@Mapper
public interface OrdersInterface {
	public List<Order> getOrderBymail(String mail);
	public int InsertOrder(Order order);
	public int PayOrder(String orderNo);
	public int DeleteByNo(String No);
}
