package ua.lv.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import ua.lv.entity.Comments;

import java.util.List;

/**
 * Created by User on 28.03.2019.
 */
public interface CommentsDAO extends JpaRepository<Comments, Integer> {

    @Query("from Comments c where c.product.id=:id")
    List<Comments> commentsByProduct(@Param("id")int id);
}
