package com.codeup.adlister.models;

import static java.lang.Integer.parseInt;

public class Ad {
    private int id;
    private int user_id;
    private String title;
    private String description;
    private float initial_price;
    private String brand;
    private String bike_type;
    private int speed;
    private String size;
    private String image;


    public Ad(int user_id, String title, String description, float initial_price, String brand, String bike_type, int speed, String size, String image) {
        this.user_id = user_id;
        this.title = title;
        this.description = description;
        this.initial_price = initial_price;
        this.brand = brand;
        this.bike_type = bike_type;
        this.speed = speed;
        this.size = size;
        this.image = image;
    }


    public long getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return user_id;
    }

    public void setUserId(int user_id) {
        this.user_id = user_id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public float getInitialPrice() { return initial_price; }

    public void setInitialPrice(float initial_price){ this.initial_price = initial_price; }

    public String getBrand() { return brand; }

    public void setBrand(String brand){ this.brand = brand; }

    public String getBikeType() { return bike_type; }

    public void setBikeType(String bike_type){ this.bike_type = bike_type; }

    public int getSpeed() { return speed; }

    public void setSpeed(int speed){ this.speed = speed; }

    public String getSize() { return size; }

    public void setSize(String size){ this.image = size; }

    public String getImage() { return image; }

    public void setImage(String image){ this.image = image; }
}
