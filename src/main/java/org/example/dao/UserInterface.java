package org.example.dao;


import org.apache.ibatis.annotations.Mapper;
import org.example.pojo.User;
@Mapper
public interface UserInterface {
	public int Regiter(User user);
	public User getUserByMail(String mail);
	public int Bookvip(String mail);
	public int Cancelvip(String mail);
	public int ChangeName(String mail ,String username);
	public int ChangePassword(String mail,String npw);
	public int DeleteBymail(String mail);
}

