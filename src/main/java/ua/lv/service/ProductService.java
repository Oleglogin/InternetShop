package ua.lv.service;

import org.springframework.security.access.method.P;
import ua.lv.entity.Product;

import java.util.List;

/**
 * Created by User on 08.03.2019.
 */
public interface ProductService {
    void save (Product product);
    Product getByProductId(int id);
    void delete(int id);
    List<Product> productList();
    Product findByproductName(String productname);
    List<Product> categoryProduct(String category);

    int countProduct();

}
