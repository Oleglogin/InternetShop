package ua.lv.service;

import ua.lv.entity.Product;
import ua.lv.entity.ProductCategory;

import java.util.List;

/**
 * Created by User on 09.03.2019.
 */
public interface ProductCategoryService {
    void save(ua.lv.entity.ProductCategory productCategory);
    void delete(int id);
    List<ProductCategory> productCategoryList();
    ProductCategory findByPCName(String productcategoryname);
    ProductCategory getPCById(int id);

}
