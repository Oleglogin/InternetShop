package ua.lv.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import ua.lv.entity.Product;

/**
 * Created by User on 08.03.2019.
 */
public interface ProductDAO extends JpaRepository<Product, Integer> {

    @Query("from Product p where p.title =:title")
    Product findByProductName(@Param("title")String title);
}
