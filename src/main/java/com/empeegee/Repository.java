package com.empeegee;

import com.empeegee.model.Article;
import com.empeegee.model.User;
import com.empeegee.utils.Role;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

public class Repository {

    private ArrayList<User> users = new ArrayList<>();

    public Repository() {
        users.add(new User(22777, "Mihail", "1111", Role.ROLE_USER, new ArrayList(Arrays.asList(
                new Article(1, "Trump", "Haha", new Date()),
                new Article(2, "Vasea", "gsadsa", new Date()),
                new Article(3, "Ivanca", "dsadsadsa", new Date()))))
        );
    }

    public List<User> getUsers() {
        return users;
    }

}
