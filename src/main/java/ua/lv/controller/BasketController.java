package ua.lv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
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
    public String toBasket(Model model, Principal principal){
        String principalName = principal.getName();
        User basketName = userService.findByUserName(principalName);
        model.addAttribute("currentUser", userService.findByUserName(principalName));
        model.addAttribute("countProductInBasket", purchaseService.countProductsByUser(basketName.getId()));
        model.addAttribute("purchaseList", purchaseService.listPurchase());
        model.addAttribute("amountPrice", purchaseService.amountInBasket(basketName.getId()));
        return "basket";
    }
}
