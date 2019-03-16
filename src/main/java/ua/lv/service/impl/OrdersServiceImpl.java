package ua.lv.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ua.lv.dao.OrdersDAO;
import ua.lv.entity.Orders;
import ua.lv.service.OrdersService;

import java.util.List;

/**
 * Created by User on 16.03.2019.
 */
@Service
@Transactional
public class OrdersServiceImpl implements OrdersService {

    @Autowired
    OrdersDAO ordersDAO;

    @Override
    public void saveOrders(Orders orders) {
        ordersDAO.save(orders);
    }

    @Override
    public void delete(int id) {
        ordersDAO.delete(id);
    }

    @Override
    public Orders getOrdersId(int id) {
        return ordersDAO.findOne(id);
    }

    @Override
    public List<Orders> ordersList() {
        return ordersDAO.findAll();
    }
}
