package org.example.service;

import org.example.dao.TypeInterface;
import org.example.pojo.Type;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TypeService {
    @Autowired
    private TypeInterface typeInterface;

    public List<Type> getType(){
        return typeInterface.getType();
    }
}
