package ua.lv.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ua.lv.dao.CommentsDAO;
import ua.lv.entity.Comments;
import ua.lv.service.CommentsService;

import java.util.List;

/**
 * Created by User on 28.03.2019.
 */
@Transactional
@Service
public class CommentsserviceImpl implements CommentsService {

    @Autowired
    CommentsDAO commentsDAO;

    @Override
    public void addComments(Comments comments) {
        commentsDAO.save(comments);
    }

    @Override
    public void deleteComments(int id) {
        commentsDAO.delete(id);
    }

    @Override
    public List<Comments> commentsList() {
        return commentsDAO.findAll();
    }

    @Override
    public Comments findOne(int id) {
        return commentsDAO.findOne(id);
    }

    @Override
    public List<Comments> commentsByProduct(int id) {
        return commentsDAO.commentsByProduct(id);
    }
}
