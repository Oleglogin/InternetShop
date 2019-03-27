package ua.lv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ua.lv.entity.MainImg;
import ua.lv.entity.Orders;
import ua.lv.entity.Product;
import ua.lv.entity.User;
import ua.lv.service.ProductService;
import ua.lv.service.UserService;

import java.security.Principal;

/**
 * Created by User on 10.03.2019.
 */
@Controller
public class AdminController {


    @Autowired
    UserService userService;
    @Autowired
    ProductService productService;



    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String toAdmin(Model model, Principal principal,
                          @ModelAttribute("emptyMainImg")MainImg mainImg,
                          @ModelAttribute("emptyProduct")Product product,
                          @ModelAttribute("emptyUser")User user,
                          @ModelAttribute("emptyOrders")Orders orders){
        String principalName = principal.getName();
        User byUserName = userService.findByUserName(principalName);
        model.addAttribute("currentUser", byUserName);

        model.addAttribute("countProduct", productService.countProduct());
        model.addAttribute("countUser", userService.countUser());
        model.addAttribute("userList", userService.listUsers());
        model.addAttribute("productList", productService.productList());
        return "admin";
    }


}
