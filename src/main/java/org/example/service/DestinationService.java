package org.example.service;

import org.example.dao.DestinationInterface;
import org.example.pojo.Destination;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DestinationService {


    @Autowired
    private DestinationInterface destinationInterface;

    public Destination getDestinationByDesId(Integer id){
        return destinationInterface.getDestinationByDesId(id);
    }
    public List<Destination> getDestinationByType(String type){
        return destinationInterface.getDestinationByType(type);
    }

    public List<Destination> getDestinationByCity(String city){
        return destinationInterface.getDestinationByCity(city);
    }
}
