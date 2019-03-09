package ua.lv.entity;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.List;

/**
 * Created by User on 08.03.2019.
 */
@Entity
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String title;
    private String description;
    private String count;
    private BigDecimal price;
//    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "product")
//    private List<ProductCategory> productCategory;

    public Product() {

    }

    public Product(int id, String title, String description, String count, BigDecimal price, List<ProductCategory> productCategory) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.count = count;
        this.price = price;
        //this.productCategory = productCategory;
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



    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

//    public List<ProductCategory> getProductCategory() {
//        return productCategory;
//    }
//
//    public void setProductCategory(List<ProductCategory> productCategory) {
//        this.productCategory = productCategory;
//    }


    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", description='" + description + '\'' +
                ", count='" + count + '\'' +
                ", price=" + price +
                '}';
    }
}
