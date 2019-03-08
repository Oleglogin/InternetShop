package ua.lv.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.lv.entity.Order;

/**
 * Created by User on 08.03.2019.
 */
public interface OrderDAO extends JpaRepository<Order,Integer> {

}
