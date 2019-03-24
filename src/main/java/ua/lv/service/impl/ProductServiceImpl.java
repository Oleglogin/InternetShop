package ua.lv.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ua.lv.dao.ProductDAO;
import ua.lv.entity.Product;
import ua.lv.service.ProductService;

import java.util.List;

/**
 * Created by User on 09.03.2019.
 */
@Service
@Transactional
public class ProductServiceImpl implements ProductService {

    @Autowired
    ProductDAO productDAO;
    @Override
    public void save(Product product) {
        productDAO.save(product);
    }

    @Override
    public Product getByProductId(int id) {
        return productDAO.findOne(id);
    }

    @Override
    public void delete(int id) {
        productDAO.delete(id);
    }

    @Override
    public List<Product> productList() {
        return productDAO.findAll();
    }

    @Override
    public Product findByproductName(String productname) {
        return null;
    }

    @Override
    public List<Product> categoryProduct(String category) {
        return productDAO.categoryProducts(category);
    }

    @Override
    public int countProduct() {
        return productDAO.countProduct();
    }

    @Override
    public List<Product> productListByUser(int id) {
        return productDAO.productListByUser(id);
    }
}
