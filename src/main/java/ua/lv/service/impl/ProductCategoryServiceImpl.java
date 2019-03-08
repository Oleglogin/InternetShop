package ua.lv.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ua.lv.dao.ProductCategoryDAO;
import ua.lv.entity.Product;
import ua.lv.entity.ProductCategory;
import ua.lv.service.ProductCategoryService;

import java.util.List;

/**
 * Created by User on 09.03.2019.
 */
@Service
@Transactional
public class ProductCategoryServiceImpl implements ProductCategoryService {
    @Autowired
    ProductCategoryDAO productCategoryDAO;

    @Override
    public void save(ProductCategory productCategory) {
        productCategoryDAO.save(productCategory);
    }

    @Override
    public void delete(int id) {
        productCategoryDAO.delete(id);
    }

    @Override
    public List<ProductCategory> productCategoryList() {
        return productCategoryDAO.findAll();
    }

    @Override
    public ProductCategory findByPCName(String productcategoryname) {
        return null;
    }

    @Override
    public ProductCategory getPCById(int id) {
        return productCategoryDAO.getOne(id);
    }
}
