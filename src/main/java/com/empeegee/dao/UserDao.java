package com.empeegee.dao;

import com.empeegee.model.User;

import java.util.List;

public interface UserDao {
    User getUser();
    List<User> getAllUsers();
    User getUserByUserNameAndPassword();
    boolean insertUser();
    boolean updateUser();
    boolean deleteUser();
}
