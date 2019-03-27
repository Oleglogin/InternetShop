package ua.lv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import ua.lv.entity.Orders;
import ua.lv.entity.Purchase;
import ua.lv.entity.User;
import ua.lv.service.PurchaseService;
import ua.lv.service.UserService;

import java.security.Principal;

/**
 * Created by User on 16.03.2019.
 */
@Controller
public class BasketController {

    @Autowired
    UserService userService;
    @Autowired
    PurchaseService purchaseService;


    @RequestMapping(value = "/basket", method = RequestMethod.GET)
    public String toBasket(Model model, Principal principal,
                           @ModelAttribute("emptyOrders")Orders orders){
        String principalName = principal.getName();
        User basketUser = userService.findByUserName(principalName);
        model.addAttribute("currentUser", userService.findByUserName(principalName));

        model.addAttribute("countProductInBasket", purchaseService.countProductsByUser(basketUser.getId()));
        model.addAttribute("purchaseListInBasket", purchaseService.purchaseListInBasket(basketUser.getId()));
        model.addAttribute("amountPrice", purchaseService.amountInBasket(basketUser.getId()));
        model.addAttribute("countProductInBasket",purchaseService.amountInBasket(basketUser.getId()));
        return "basket";
    }
}
