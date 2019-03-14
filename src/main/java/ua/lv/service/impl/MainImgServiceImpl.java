package ua.lv.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ua.lv.dao.MainImgDAO;
import ua.lv.entity.MainImg;
import ua.lv.service.MainImgService;

import java.util.List;

/**
 * Created by User on 14.03.2019.
 */
@Service
@Transactional
public class MainImgServiceImpl implements MainImgService {

    @Autowired
    MainImgDAO mainImgDAO;

    @Override
    public void save(MainImg mainImg) {
        mainImgDAO.save(mainImg);
    }

    @Override
    public void delete(int id) {
        mainImgDAO.delete(id);
    }

    @Override
    public List<MainImg> MainImgList() {
        return mainImgDAO.findAll();
    }

    @Override
    public MainImg getMainImgById(int id) {
        return mainImgDAO.findOne(id);
    }

    @Override
    public MainImg findByMainImgName(String name) {
        return null;
    }
}
