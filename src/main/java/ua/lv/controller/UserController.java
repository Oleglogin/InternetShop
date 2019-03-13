package ua.lv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ua.lv.service.ProductService;
import ua.lv.service.PurchaseService;
import ua.lv.service.UserService;

/**
 * Created by User on 13.03.2019.
 */
@Controller
public class UserController {

    @Autowired
    UserService userService;
    @Autowired
    ProductService productService;
    @Autowired
    PurchaseService purchaseService;

    @RequestMapping(value = "/userData/{id}", method = RequestMethod.GET)
    public String toUserData(@PathVariable("id")int id, Model model){
        model.addAttribute("purchaseList", purchaseService.listPurchase());
        model.addAttribute("user", userService.getUserById(id));
        return "userData";
    }
}
