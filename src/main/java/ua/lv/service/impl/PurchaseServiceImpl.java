package ua.lv.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ua.lv.dao.PurchaseDAO;
import ua.lv.entity.Purchase;
import ua.lv.service.PurchaseService;

import java.util.List;

/**
 * Created by User on 12.03.2019.
 */
@Service
@Transactional

public class PurchaseServiceImpl implements PurchaseService {
    @Autowired
    PurchaseDAO purchaseDAO;

    @Override
    public void save(Purchase purchase) {
        purchaseDAO.save(purchase);
    }


    @Override
    public void delete(int id) {
        purchaseDAO.delete(id);
    }

    @Override
    public List<Purchase> listPurchase() {
        return purchaseDAO.findAll();
    }

    @Override
    public int countProductsByUser(int id) {
        return purchaseDAO.countProductsByUser(id);
    }

    @Override
    public int amountInBasket(int id) {
        return purchaseDAO.amountInBasket(id);
    }


    @Override
    public List<Purchase> purchaseListInBasket(int id) {
        return purchaseDAO.purchaseListInBasket(id);
    }
}
