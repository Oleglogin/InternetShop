package ua.lv.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.web.bind.annotation.PathVariable;
import ua.lv.entity.Product;

import java.util.List;

/**
 * Created by User on 08.03.2019.
 */
public interface ProductDAO extends JpaRepository<Product, Integer> {

    @Query("from Product p where p.title =:title")
    Product findByProductName(@Param("title")String title);

    @Query("from Product p where p.category =:category")
    List<Product>categoryProducts(@Param("category")String category);

    @Query("select count (product.id) from Product product")
    int countProduct();

//    @Query("from Product p where max p.id ")
//    Product findLastProduct();

}
