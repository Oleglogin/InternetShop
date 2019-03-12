package ua.lv.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.lv.entity.Purchase;

/**
 * Created by User on 12.03.2019.
 */
public interface PurchaseDAO extends JpaRepository<Purchase,Integer>{
}
