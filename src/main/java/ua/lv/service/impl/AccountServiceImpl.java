package ua.lv.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ua.lv.dao.AccountDAO;
import ua.lv.entity.Account;
import ua.lv.service.AccountService;

import java.util.List;

/**
 * Created by User on 16.03.2019.
 */
@Service
@Transactional
public class AccountServiceImpl implements AccountService {

    @Autowired
    AccountDAO accountDAO;

    @Override
    public void addAccount(Account account) {
        accountDAO.save(account);
    }

    @Override
    public void deleteAccount(int id) {
        accountDAO.delete(id);
    }

    @Override
    public Account getAccountById(int id) {
        return accountDAO.getOne(id);
    }

    @Override
    public List<Account> accountList() {
        return accountDAO.findAll();
    }
}
