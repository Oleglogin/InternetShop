package ua.lv.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import ua.lv.entity.Account;

/**
 * Created by User on 16.03.2019.
 */
public interface AccountDAO extends JpaRepository<Account, Integer> {

    @Query("select count (account.id) from Account account where account.user.id=:id")
    int countAccount(@Param("id")int id);

}
