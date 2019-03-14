package ua.lv.service;

import ua.lv.entity.Purchase;

import java.util.List;

/**
 * Created by User on 12.03.2019.
 */
public interface PurchaseService {
    void save(Purchase user);
    void delete(int id);
    List<Purchase> listPurchase();

}
