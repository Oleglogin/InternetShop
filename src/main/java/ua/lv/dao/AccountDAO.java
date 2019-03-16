package ua.lv.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.lv.entity.Account;

/**
 * Created by User on 16.03.2019.
 */
public interface AccountDAO extends JpaRepository<Account, Integer> {

}
