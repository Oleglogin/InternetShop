package ua.lv.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import ua.lv.entity.Purchase;

/**
 * Created by User on 12.03.2019.
 */
public interface PurchaseDAO extends JpaRepository<Purchase,Integer>{


    @Query("select count (product.id) from Purchase purchase where purchase.user.id=:id")
    int countProductsByUser(@Param("id")int id);
}
