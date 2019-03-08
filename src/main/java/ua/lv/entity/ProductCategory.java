package ua.lv.entity;

import javax.persistence.Entity;

/**
 * Created by User on 08.03.2019.
 */
@Entity
public class ProductCategory {
    private int id;
    private String titel;

    public ProductCategory() {
    }

    public ProductCategory(int id, String titel) {
        this.id = id;
        this.titel = titel;
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
}
