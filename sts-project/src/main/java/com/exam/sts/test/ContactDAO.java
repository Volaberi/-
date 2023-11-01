package com.exam.sts.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ContactDAO {
    private static final String JDBC_URL = "jdbc:mysql://localhost/exam";
    private static final String JDBC_USERNAME = "root";
    private static final String JDBC_PASSWORD = "1234";

    public void saveContact(Contact contact) throws SQLException {
        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USERNAME, JDBC_PASSWORD)) {
            String sql = "INSERT INTO contacts (name, id, subject, message) VALUES (?, ?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, contact.getName());
            statement.setString(2, contact.getId());
            statement.setString(3, contact.getSubject());
            statement.setString(4, contact.getMessage());
            statement.executeUpdate();
        }
    }
    
    public List<Contact> getAllContacts() throws SQLException {
        List<Contact> contacts = new ArrayList<>();

        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USERNAME, JDBC_PASSWORD)) {
            String sql = "SELECT * FROM contacts";
            PreparedStatement statement = conn.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Contact contact = new Contact();
                contact.setName(resultSet.getString("name"));
                contact.setId(resultSet.getString("id"));
                contact.setSubject(resultSet.getString("subject"));
                contact.setMessage(resultSet.getString("message"));
                contacts.add(contact);
            }
        }

        return contacts;
    }
}