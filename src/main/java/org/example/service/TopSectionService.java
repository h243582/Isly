package org.example.service;

import org.example.dao.TopSectionInterface;
import org.example.pojo.TopSection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TopSectionService {
    @Autowired
    private TopSectionInterface topSectionInterface;

    public List<TopSection> getTopSection(){
        return topSectionInterface.getTopSection();
    }
}
