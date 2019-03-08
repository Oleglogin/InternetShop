package ua.lv.entity;

import javax.persistence.Entity;
import java.math.BigDecimal;

/**
 * Created by User on 08.03.2019.
 */
@Entity
public class Product {
    private int id;
    private String title;
    private String description;
    private String count;
    private BigDecimal price;
    private ProductCategory productCategory;

    public Product() {

    }

    public Product(int id, String title, String description, String count, BigDecimal price, ProductCategory productCategory) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.count = count;
        this.price = price;
        this.productCategory = productCategory;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDiscription() {
        return description;
    }

    public void setDiscription(String discription) {
        this.description = discription;
    }

    public String getCount() {
        return count;
    }

    public void setCount(String count) {
        this.count = count;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public ProductCategory getProductCategory() {
        return productCategory;
    }

    public void setProductCategory(ProductCategory productCategory) {
        this.productCategory = productCategory;
    }
}
