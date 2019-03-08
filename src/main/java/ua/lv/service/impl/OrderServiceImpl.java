package ua.lv.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ua.lv.dao.OrderDAO;
import ua.lv.entity.Order;
import ua.lv.entity.Product;
import ua.lv.service.OrderService;

import java.util.List;

/**
 * Created by User on 09.03.2019.
 */
@Service
@Transactional
public class OrderServiceImpl implements OrderService {
    @Autowired
    OrderDAO orderDAO;

    @Override
    public void save(Order order) {
        orderDAO.save(order);
    }

    @Override
    public Order getOrderById(int id) {
        return orderDAO.findOne(id);
    }

    @Override
    public void delete(int id) {
        orderDAO.delete(id);
    }

    @Override
    public List<Order> orderList() {
        return orderDAO.findAll();
    }

    @Override
    public Order findByOrderName(String ordername) {
        return null;
    }
}
