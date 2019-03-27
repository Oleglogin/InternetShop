package ua.lv.service;

import ua.lv.entity.Orders;

import java.util.List;

/**
 * Created by User on 16.03.2019.
 */
public interface OrdersService {

    void saveOrders(Orders orders);
    void delete(int id);
    Orders getOrdersId(int id);
    List<Orders> ordersList();
    List<Orders>getProductInOrders(int id);
}
