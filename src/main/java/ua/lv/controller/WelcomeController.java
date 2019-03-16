package ua.lv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import ua.lv.entity.Purchase;
import ua.lv.entity.User;
import ua.lv.service.MainImgService;
import ua.lv.service.ProductService;
import ua.lv.service.PurchaseService;
import ua.lv.service.UserService;

import java.security.Principal;

/**
 * Created by User on 09.03.2019.
 */
@Controller
public class WelcomeController {
    @Autowired
    UserService userService;
    @Autowired
    ProductService productService;
    @Autowired
    MainImgService mainImgService;
    @Autowired
    PurchaseService purchaseService;

    @GetMapping(value = "/welcome")
    public String goWelcome(Model model, Principal principal){
        String principalName = principal.getName();
        User ByUserName = userService.findByUserName(principalName);
        model.addAttribute("currentUser", ByUserName);

        model.addAttribute("productList", productService.productList());
        model.addAttribute("mainImgList", mainImgService.MainImgList());
        model.addAttribute("countProductInBasket", purchaseService.countProductsByUser(ByUserName.getId()));


        return "/welcome";
    }
}
