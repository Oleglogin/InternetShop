package ua.lv.dao;

import com.sun.org.apache.bcel.internal.generic.INEG;
import org.springframework.data.jpa.repository.JpaRepository;
import ua.lv.entity.Orders;

/**
 * Created by User on 16.03.2019.
 */
public interface OrdersDAO extends JpaRepository<Orders, Integer> {
}
