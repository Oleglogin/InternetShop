package ua.lv.entity;

import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import java.io.File;
import java.io.IOException;
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
    private double price;
//    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "product")
//    private List<ProductCategory> productCategory;
    private String productImg;



    @ManyToOne(cascade = CascadeType.MERGE, fetch = FetchType.EAGER)
    private User user;









    public Product() {

    }

    public Product(int id, String title, String description, String count, double price, List<ProductCategory> productCategory) {
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

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
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


    public String getProductImg() {
        return productImg;
    }

    public void setProductImg(MultipartFile multipartFile) {
        String path = System.getProperty("user.home") + File.separator + "Pictures\\";
        try {
            multipartFile.transferTo(new File(path + multipartFile.getOriginalFilename()));
        } catch (IOException e) {
            e.printStackTrace();
        }
        this.productImg = "\\workImg\\" + multipartFile.getOriginalFilename();
    }




    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

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
