package ua.lv.entity;

import org.springframework.web.bind.annotation.ModelAttribute;

import javax.persistence.*;

/**
 * Created by User on 28.03.2019.
 */
@Entity
public class Comments {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    @Column(columnDefinition = "text")
    private String comment;

    @ManyToOne(cascade = CascadeType.MERGE, fetch = FetchType.EAGER)
    User user;
    @ManyToOne(cascade = CascadeType.MERGE, fetch = FetchType.EAGER)
    Product product;

    public Comments() {
    }

    public Comments(String comment, User user, Product product) {
        this.comment = comment;
        this.user = user;
        this.product = product;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }
}
