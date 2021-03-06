package ua.lv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ua.lv.entity.Account;
import ua.lv.entity.User;
import ua.lv.service.AccountService;
import ua.lv.service.ProductService;
import ua.lv.service.PurchaseService;
import ua.lv.service.UserService;

import java.security.Principal;

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
    @Autowired
    AccountService accountService;

    @RequestMapping(value = "/userData/{id}", method = RequestMethod.GET)
    public String toUserData(@PathVariable("id")int id,
                             Model model,
                             Principal principal,
                             @ModelAttribute("emptyAccount") Account account,
                             @ModelAttribute("emptyUser")User user){
        String principalName = principal.getName();
        User byUserName = userService.findByUserName(principalName);
        model.addAttribute("currentUser", byUserName);

        model.addAttribute("countAccount", accountService.countAccount(id));
        model.addAttribute("countProductInBasket", purchaseService.countProductsByUser(id));
        model.addAttribute("purchaseList", purchaseService.listPurchase());
        model.addAttribute("user", userService.getUserById(id));
        return "userData";
    }

    @RequestMapping(value = "userData/Locked/{id}", method = RequestMethod.GET)
    public String changeLocked(@PathVariable("id")int id,
                               Model model, Principal principal){
        String principalName = principal.getName();
        User byUserName = userService.findByUserName(principalName);
        model.addAttribute("currentUser",byUserName);

        model.addAttribute("emptyUser",userService.getUserById(id));
        return "userData";
    }

}
