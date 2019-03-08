package ua.lv.entity;

import javax.persistence.Entity;
import java.util.Date;

/**
 * Created by User on 08.03.2019.
 */
@Entity
public class Order {
    private int id;
    private User user;
    private Product product;
    private Date date;

    public Order() {
    }



    public int getId() {
        return id;
    }

    public User getUser() {
        return user;
    }

    public Product getProduct() {
        return product;
    }

    public Date getDate() {
        return date;
    }
}
