package ua.lv.entity;

import javax.persistence.*;

/**
 * Created by User on 16.03.2019.
 */
@Entity
public class Orders {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private int sum;

    @ManyToOne(cascade = CascadeType.MERGE, fetch = FetchType.EAGER)
    private User user;
    @ManyToOne(cascade = CascadeType.MERGE, fetch = FetchType.EAGER)
    private Purchase purchase;
    @ManyToOne(cascade = CascadeType.MERGE, fetch = FetchType.EAGER)
    private Product product;

    public Orders() {
    }

    public Orders(int sum, User user, Purchase purchase, Product product) {
        this.sum = sum;
        this.user = user;
        this.purchase = purchase;
        this.product = product;
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

    public int getSum() {
        return sum;
    }

    public void setSum(int sum) {
        this.sum = sum;
    }

    public Purchase getPurchase() {
        return purchase;
    }

    public void setPurchase(Purchase purchase) {
        this.purchase = purchase;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }
}
