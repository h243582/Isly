package org.example.dao;
import java.util.List;
import java.util.Vector;

import org.apache.ibatis.annotations.Mapper;
import org.example.pojo.TopSection;
@Mapper
public interface TopSectionInterface {
	public List<TopSection> getTopSection();
	public int InsertTopSection(TopSection topSection);
	public int DeleteById(int Id);
}
