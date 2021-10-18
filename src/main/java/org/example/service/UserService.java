package org.example.service;

import org.example.dao.UserInterface;
import org.example.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    private UserInterface userInterface;

    public Boolean Regiter(User user){
        if (userInterface.Regiter(user)==1){
            return true;
        }
        return false;
    }
    public User Login(String mail,String password){
        User user=userInterface.getUserByMail(mail);
        if(user==null)
            return null;
        if(!password.equals(user.getPassword())){
            return null;
        }
        return user;
    }
    public Boolean Bookvip(String mail){
        if(userInterface.Bookvip(mail)==1){
            return true;
        }
        return false;
    }
    public Boolean ChangeName(String mail ,String name){
        if(userInterface.ChangeName(mail,name)==1)
            return  true;
        return false;
    }
    public Boolean ChangePassword(User user,String npw){
        User tmpUser=userInterface.getUserByMail(user.getMail());
        if(tmpUser==null)
            return false;
        if(tmpUser.getPassword().equals(user.getPassword())){
            userInterface.ChangePassword(user.getMail(),npw);
            return true;
        }
        return false;
    }
}
