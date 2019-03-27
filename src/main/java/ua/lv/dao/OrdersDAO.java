package ua.lv.dao;

import com.sun.org.apache.bcel.internal.generic.INEG;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import ua.lv.entity.Orders;

import java.util.List;

/**
 * Created by User on 16.03.2019.
 */
public interface OrdersDAO extends JpaRepository<Orders, Integer> {



//    @Query("insert into Orders  select * from Purchase p where p.user.id=:id")
//    List<Orders> getProductInOrders(@Param("id")int id);
}
