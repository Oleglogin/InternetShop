package ua.lv.controller;

import com.sun.org.apache.xpath.internal.operations.Mod;
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
    @Autowired
    PurchaseService purchaseService;



    @RequestMapping(value = "account/{id}", method = RequestMethod.GET)
    public String goAccount(@PathVariable("id") int id,
                            Model model,
                            Principal principal,
                            @ModelAttribute("emptyAccount") Account account){
        model.addAttribute("emptyAccount",new Account());
        String principalName = principal.getName();
        User byUserName = userService.findByUserName(principalName);
        model.addAttribute("currentUser", byUserName);
        model.addAttribute("countProductInBasket", purchaseService.countProductsByUser(id));
        accountService.getAccountById(id);
        return "account";

    }

    @RequestMapping(value = "add/account", method = RequestMethod.POST)
    public String addAccount(Principal principal,
                             @ModelAttribute("emptyAccount") Account account){
        String principalName = principal.getName();
        User byUserName = userService.findByUserName(principalName);
//        model.addAttribute("emptyUser", byUserName);
        account.setUser(byUserName);
        accountService.addAccount(account);
        return "redirect:/welcome";
    }

    @RequestMapping(value = "/editAccount/{id}")
    public String editAcc(@PathVariable("id") int id,
                          Model model, Principal principal,
                          @ModelAttribute("emptyAccount")Account account){
        String principalName = principal.getName();
        User byUserName= userService.findByUserName(principalName);
        model.addAttribute("currentUser",byUserName);
        model.addAttribute("countProductInBasket", purchaseService.countProductsByUser(id));
        model.addAttribute("emptyAccount", accountService.getAccountById(id));
        return "/account";
    }





}
