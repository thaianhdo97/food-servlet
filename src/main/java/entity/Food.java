package entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

public class Food {
    private int id;
    private String rollNumber;
    private String name;
    private int categoryId;
    private String description;
    private String thumbnail;
    private double price;
    private Date soldAt;
    private Date updatedAt;
    private int status; // 1. Selling | 0. Sold | -1. Deleted

    public Food() {
    }

    @Override
    public String toString() {
        return "Food{" +
                "rollNumber='" + rollNumber + '\'' +
                ", name='" + name + '\'' +
                ", categoryId='" + categoryId + '\'' +
                ", description='" + description + '\'' +
                ", thumbnail='" + thumbnail + '\'' +
                ", price=" + price +
                ", soldAt='" + soldAt + '\'' +
                ", updatedAt='" + updatedAt + '\'' +
                ", status=" + status +
                '}';
    }

    public Food(int id, String rollNumber, String name, int categoryId, String description, String thumbnail, double price, Date soldAt, Date updatedAt, int status) {
        this.id = id;
        this.rollNumber = rollNumber;
        this.name = name;
        this.categoryId = categoryId;
        this.description = description;
        this.thumbnail = thumbnail;
        this.price = price;
        this.soldAt = soldAt;
        this.updatedAt = updatedAt;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRollNumber() {
        return rollNumber;
    }

    public void setRollNumber(String rollNumber) {
        this.rollNumber = rollNumber;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public Date getSoldAt() {
        return soldAt;
    }

    public void setSoldAt(Date soldAt) {
        this.soldAt = soldAt;
    }

    public Date getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Date updatedAt) {
        this.updatedAt = updatedAt;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
