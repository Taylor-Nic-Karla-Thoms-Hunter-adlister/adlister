package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {
    List<Ad> all(); // find all the ads records


    void update(Ad ad); // update an existing record

    boolean destroy(Ad ad); // remove a record

    // insert a new ad and return the new ad's id
    boolean insert(Ad ad);
}
