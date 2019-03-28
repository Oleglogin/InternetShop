package ua.lv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ua.lv.entity.Comments;
import ua.lv.entity.Product;
import ua.lv.entity.User;
import ua.lv.service.CommentsService;
import ua.lv.service.ProductService;
import ua.lv.service.UserService;

import java.security.Principal;

/**
 * Created by User on 28.03.2019.
 */
@Controller
public class CommentsController {
    @Autowired
    UserService userService;
    @Autowired
    ProductService productService;
    @Autowired
    CommentsService commentsService;


    @RequestMapping(value = "/addComments/{currentUser.id}/{product.id}", method = RequestMethod.POST)
    public String addComment(Model model,
                             @ModelAttribute("emptyComments")Comments comments,
                             @PathVariable("product.id")int ProductId,
                             @PathVariable("currentUser.id")int UserId){

        User userId = userService.getUserById(UserId);
        Product productId =  productService.getByProductId(ProductId);

        comments.setUser(userId);
        comments.setProduct(productId);
        commentsService.addComments(comments);
        model.addAttribute("commentsList", commentsService.commentsList());

        model.addAttribute("commentsByProduct",commentsService.commentsByProduct(productId.getId()));

        return "redirect:/userData";
    }
}
