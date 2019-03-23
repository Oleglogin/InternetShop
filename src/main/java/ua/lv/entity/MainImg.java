package ua.lv.entity;

import org.springframework.web.multipart.MultipartFile;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.io.File;
import java.io.IOException;

/**
 * Created by User on 14.03.2019.
 */
@Entity
public class MainImg {
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    private int id;

    private String name;

    private String pictures;

    private String imgCategory;

    private String menu;




    public MainImg() {
    }

    public MainImg(String name, String pictures) {
        this.name = name;
        this.pictures = pictures;
    }

    public String getMenu() {
        return menu;
    }

    public void setMenu(String menu) {
        this.menu = menu;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPictures() {
        return pictures;
    }


    public void setPictures(MultipartFile multipartFile) {
        String path = System.getProperty("user.home") + File.separator + "Pictures\\";
        try {
            multipartFile.transferTo(new File(path + multipartFile.getOriginalFilename()));
        } catch (IOException e) {
            e.printStackTrace();
        }
        this.pictures = "\\workImg\\" + multipartFile.getOriginalFilename();
    }

    public String getImgCategory() {
        return imgCategory;
    }

    public void setImgCategory(String imgCategory) {
        this.imgCategory = imgCategory;
    }

    @Override
    public String toString() {
        return "MainImg{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", pictures='" + pictures + '\'' +
                ", category='" + imgCategory + '\'' +
                '}';
    }
}
