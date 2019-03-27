package ua.lv.entity;

import javax.persistence.*;
import java.util.List;

/**
 * Created by User on 12.03.2019.
 */
@Entity
public class Purchase {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private int count;
    private int amount;


    @ManyToOne(cascade = CascadeType.MERGE, fetch = FetchType.EAGER)
    private User user;
    @ManyToOne(cascade = CascadeType.MERGE, fetch = FetchType.EAGER)
    private Product product;
//    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "purchase" )
//    private List<Orders> orders;

    public Purchase() {
    }

    public Purchase(int count) {
        this.count = count;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
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

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

//    public List<Orders> getOrderss() {
//        return orders;
//    }

//    public void setOrderss(List<Orders> orderss) {
//        this.orders = orderss;
//    }

    @Override
    public String toString() {
        return "Purchase{" +
                "id=" + id +
                ", count='" + count + '\'' +
                '}';
    }
}
