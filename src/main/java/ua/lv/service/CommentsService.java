package ua.lv.service;

import ua.lv.entity.Comments;
import ua.lv.entity.Product;

import java.util.List;

/**
 * Created by User on 28.03.2019.
 */
public interface CommentsService {
    void addComments(Comments comments);
    void deleteComments(int id);
    List<Comments> commentsList();
    Comments findOne(int id);

    List<Comments> commentsByProduct(int id);
}
