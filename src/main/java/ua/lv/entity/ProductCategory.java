package ua.lv.entity;

import javax.persistence.*;

/**
 * Created by User on 08.03.2019.
 */
@Entity
public class ProductCategory {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String titel;
//    @ManyToOne(cascade = CascadeType.MERGE, fetch = FetchType.EAGER)
//    private Product product;

    public ProductCategory() {
    }

    public ProductCategory(String titel, Product product) {
        this.titel = titel;
        //this.product = product;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitel() {
        return titel;
    }

    public void setTitel(String titel) {
        this.titel = titel;
    }

//    public Product getProduct() {
//        return product;
//    }
//
//    public void setProduct(Product product) {
//        this.product = product;
//    }
}
