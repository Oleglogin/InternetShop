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
import ua.lv.service.UserService;

import java.security.Principal;

/**
 * Created by User on 16.03.2019.
 */
@Controller
public class AccountController {

    @Autowired
    UserService userService;
    @Autowired
    ProductService productService;

    @Autowired
    AccountService accountService;


    @RequestMapping(value = "add/account", method = RequestMethod.POST)
    public String addAccount(Principal principal,
                             @ModelAttribute("emptyAccount") Account account){
        String principalName = principal.getName();
        User byUserName = userService.findByUserName(principalName);
//        model.addAttribute("emptyUser", byUserName);
        account.setUser(byUserName);
        accountService.addAccount(account);
        return "redirect:/userData/{id}";
    }
}
