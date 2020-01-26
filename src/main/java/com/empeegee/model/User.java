package com.empeegee.model;

import java.util.List;

public class User {
    private int id;
    private String name;
    private String password;
    private int role;
    private List<Article> articles;

    public User() {
    }

    public User(int id, String name, String password, int role, List<Article> articles) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.role = role;
        this.articles = articles;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public List<Article> getArticles() {
        return articles;
    }

    public void setArticles(List<Article> articles) {
        this.articles = articles;
    }
}
