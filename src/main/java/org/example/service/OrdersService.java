package org.example.service;

import org.example.dao.OrdersInterface;
import org.example.pojo.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrdersService {
    @Autowired
    private OrdersInterface ordersInterfacel;

    public List<Order> getOrderBymail(String mail){
        return ordersInterfacel.getOrderBymail(mail);
    }
    public Boolean InsertOrder(Order order){
        if(ordersInterfacel.InsertOrder(order)==1)
            return true;
        return false;
    }
    public int PayOrder(String orderNo){
        return ordersInterfacel.PayOrder(orderNo);
    }
}
