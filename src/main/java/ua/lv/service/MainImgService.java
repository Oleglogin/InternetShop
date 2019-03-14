package ua.lv.service;

import ua.lv.entity.MainImg;

import java.util.List;

/**
 * Created by User on 14.03.2019.
 */
public interface MainImgService {
    void save(MainImg mainImg);
    void delete(int id);
    List<MainImg> MainImgList();
    MainImg getMainImgById(int id);
    MainImg findByMainImgName(String name);


}
