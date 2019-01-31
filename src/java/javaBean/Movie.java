package javaBean;

import java.io.Serializable;
import java.util.ArrayList;

public class Movie implements Serializable {

    private String title;
    private double price;

    public Movie() {

        title = "";
        price = 0.0;

    }

    public Movie(String title, double price) {
        this.title = title;
        this.price = price;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

}
