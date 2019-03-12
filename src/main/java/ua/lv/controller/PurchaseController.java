package ua.lv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ua.lv.entity.Purchase;
import ua.lv.entity.User;
import ua.lv.service.ProductService;
import ua.lv.service.PurchaseService;
import ua.lv.service.UserService;

import java.security.Principal;

/**
 * Created by User on 12.03.2019.
 */
@Controller
public class PurchaseController {
    @Autowired
    UserService userService;
    @Autowired
    ProductService productService;
    @Autowired
    PurchaseService purchaseServise;
    @RequestMapping(value = "/purchase/add", method = RequestMethod.POST)
    public String addOrder(@ModelAttribute("emptyPurchase")Purchase purchase, Model model, Principal principal){
        String principalName = principal.getName();
        User byUserName = userService.findByUserName(principalName);


        purchaseServise.save(purchase);

//        purchase.setUser(byUserName);
        return "welcome";
    }
}
