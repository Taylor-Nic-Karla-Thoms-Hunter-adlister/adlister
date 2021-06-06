package com.codeup.adlister.models;

import static java.lang.Float.parseFloat;
import static java.lang.Integer.parseInt;

public class Ad {
    private long id;
    private long userId;
    private String title;
    private String description;
    private String brand;
    private String type;
    private String size;
    private int speed;
    private float price;
    private String image;


    public Ad(long userId, String title, String description, String brand, String type, int speed, float price, String image, String size) {
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.brand = brand;
        this.type = type;
        this.speed = speed;
        this.price = price;
        this.image = image;
        this.size = size;
    }


    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
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

    public String getBrand() { return brand; }

    public void setBrand(String brand){ this.brand = brand; }
    public String getType() { return type; }

    public void setType(String type){ this.type = type; }

    public int getSpeed() { return speed; }

    public void setSpeed(int speed){ this.speed = speed; }

    public float getPrice() { return price; }

    public void setPrice(float price){ this.price = price; }

    public String getImage() { return image; }

    public void setImage(String image){ this.image = image; }

    public String getSize() { return size; }

    public void setSize(String size){ this.image = size; }
}
