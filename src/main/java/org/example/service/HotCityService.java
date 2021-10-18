package org.example.service;

import org.example.dao.HotCityInterface;
import org.example.pojo.HotCity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HotCityService {


    @Autowired
    private HotCityInterface hotCityInterface;



    public List<HotCity> getHotCity(){
        return hotCityInterface.getHotCity();
    }


}
