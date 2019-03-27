package ua.lv.entity;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by User on 16.03.2019.
 */
@Entity
public class Orders {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private int count;
    private int amount;

    private Date dateOfOrder = new Date();


    @ManyToOne(cascade = CascadeType.MERGE, fetch = FetchType.EAGER)
    private User user;
//    @ManyToOne(cascade = CascadeType.MERGE, fetch = FetchType.EAGER)
//    private Purchase purchase;
    @ManyToOne(cascade = CascadeType.MERGE, fetch = FetchType.EAGER)
    private Product product;

    public Orders() {
    }

    public Orders(int count, int amount, User user, Purchase purchase, Product product, Date dateOfOrder) {
        this.count = count;
        this.amount = amount;
        this.user = user;
//        this.purchase = purchase;
        this.product = product;
        this.dateOfOrder = dateOfOrder;
    }

    public Orders(User user) {
        this.user = user;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }



//    public Purchase getPurchase() {
//        return purchase;
//    }
//
//    public void setPurchase(Purchase purchase) {
//        this.purchase = purchase;
//    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public Date getDateOfRegistration() {
        return dateOfOrder;
    }

    public void setDateOfRegistration(Date dateOfRegistration) {
        this.dateOfOrder = dateOfRegistration;
    }
}
