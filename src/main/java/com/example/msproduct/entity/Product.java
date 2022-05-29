package com.example.msproduct.entity;
import javax.persistence.*;

@Entity
@Table(name = "product")
public class Product {
    @Id
    @Column(columnDefinition = "serial")
    private int id_product;
    private String name_product;
    private int price;
    private String description;
    public Product(){
        super();
    }

    public Product(int id_product, String name_product, int price, String description) {
        this.id_product = id_product;
        this.name_product = name_product;
        this.price = price;
        this.description = description;
    }

    public int getId_product() {
        return id_product;
    }

    public void setId_product(int id_product) {
        this.id_product = id_product;
    }

    public String getName_product() {
        return name_product;
    }

    public void setName_product(String name_product) {
        this.name_product = name_product;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Product{" +
                "product_id=" + id_product +
                ", name_product='" + name_product + '\'' +
                ", price=" + price +
                ", description='" + description + '\'' +
                '}';
    }
}
