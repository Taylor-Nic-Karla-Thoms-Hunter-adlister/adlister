package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import static java.lang.Integer.parseInt;
import static java.lang.Integer.toUnsignedString;

public class MySQLAdsDao implements Ads {
    private Connection connection = null;
    private ResultSet rs = null;

    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    @Override
    public List<Ad> all() {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads");
            rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public List<Ad> viewUsersAds() {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads INNER JOIN users u ON ads.user_id = u.id AND u.username = u.id");
            rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }


    @Override
    public boolean insert(Ad ad) {
        String insertQuery = "INSERT INTO ads (user_id, title, description, initial_price, brand, bike_type, speed, size, image) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);

            stmt.setInt(1, ad.getUserId());
            stmt.setString(2, ad.getTitle());
            stmt.setString(3, ad.getDescription());
            stmt.setFloat(4, ad.getInitialPrice());
            stmt.setString(5, ad.getBrand());
            stmt.setString(6, ad.getBikeType());
            stmt.setInt(7, ad.getSpeed());
            stmt.setString(8, ad.getSize());
            stmt.setString(9, ad.getImage());

            stmt.executeUpdate();
            rs = stmt.getGeneratedKeys();
            rs.next();
            rs.getInt(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
        return true;
    }

    @Override
    public void update(Ad ad) {
        String sqlUpdate = "UPDATE ads JOIN users ON title= ? AND description= ? AND initial_price= ? AND brand= ? AND bike_type= ? AND speed= ? AND size= ? AND image= ? SET ads.user_id = users.id";
        try{
            PreparedStatement stmt = connection.prepareStatement(sqlUpdate, Statement.RETURN_GENERATED_KEYS);
//            stmt.setInt(1, ad.getUserId());
            stmt.setString(1, ad.getTitle());
            stmt.setString(2, ad.getDescription());
            stmt.setFloat(3, ad.getInitialPrice());
            stmt.setString(4, ad.getBrand());
            stmt.setString(5, ad.getBikeType());
            stmt.setInt(6, ad.getSpeed());
            stmt.setString(7, ad.getSize());
            stmt.setString(8, ad.getImage());

            stmt.executeUpdate(sqlUpdate);
            rs = stmt.getGeneratedKeys();
            rs.next();
            rs.getInt(1);

            while (rs.next()){
//                String update = request.getParameter("update");
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }

    }

    @Override
    public boolean destroy(Ad ad) {
        String sql = "DELETE FROM ads WHERE id = ?";
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, ad.getUserId());
            if (statement.executeUpdate() > 0) {
                rs.next();
                statement.close();
                return true;
            } else return false;

        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("Error deleting ad.", e);
        }
    }


    public Ad extractAd(ResultSet rs) throws SQLException {
        return new Ad(
                rs.getInt("user_id"),
                rs.getString("title"),
                rs.getString("description"),
                rs.getFloat("initial_price"),
                rs.getString("brand"),
                rs.getString("bike_type"),
                rs.getInt("speed"),
                rs.getString("size"),
                rs.getString("image")
        );
    }

    public List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractAd(rs));
        }
        return ads;
    }


}
