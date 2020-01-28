package com.empeegee.utils;


import com.mysql.cj.jdbc.Driver;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {

    String connectionUrl = "jdbc:mysql://localhost:3306/learn";
    String dbUser = "root";
    String dbPwd = "";

    private static ConnectionFactory connectionFactory = null;

    private ConnectionFactory() {
        try {
            DriverManager.registerDriver(new Driver());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Connection getConnection() {
        try {
            return DriverManager.getConnection(connectionUrl, dbUser, dbPwd);

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static ConnectionFactory getInstance() {
        if (connectionFactory == null) {
            connectionFactory = new ConnectionFactory();
        }

        return connectionFactory;
    }
}