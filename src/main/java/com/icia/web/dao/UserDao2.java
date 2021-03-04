package com.icia.web.dao;

import org.springframework.stereotype.Repository;

import com.icia.web.model.User2;

@Repository("userDao2")
public interface UserDao2
{
   public int userInsert2(User2 user2);
   
   public int userUpdate2(User2 user2);

   public int userStatusUpdate2(User2 user2);
   
   public User2 userSelect2(String userId2);
   
}