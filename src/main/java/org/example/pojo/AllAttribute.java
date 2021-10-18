package org.example.pojo;

import lombok.Data;

import java.util.List;

@Data
public class AllAttribute {
    private List<List<String>> topsection;
    private List<HotCity> hotcity;
    private List<Type> type;
    private String UserName;
    private String mail;
    private String Loginmessage;
    private Integer Vip;
    private String psmessage;
    private List<Order> orderList;
    private List<Destination> DetailList;
    private String Registermessage;
    private String SText;
    private String typee;
    private String city;
    private Destination Detail;


}
