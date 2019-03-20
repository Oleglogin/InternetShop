package ua.lv.service;

import ua.lv.entity.Account;

import java.util.List;

/**
 * Created by User on 16.03.2019.
 */
public interface AccountService {

    void addAccount(Account account);
    void deleteAccount(int id);
    Account getAccountById(int id);
    List<Account> accountList();

    int countAccount(int id);

}
