package ua.lv.service;

import ua.lv.entity.Order;

import java.util.List;

/**
 * Created by User on 09.03.2019.
 */
public interface OrderService {
    void save(Order order);
    Order getOrderById(int id);
    void delete(int id);
    List<Order> orderList();
    Order findByOrderName(String ordername);

}
