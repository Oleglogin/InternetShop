package ua.lv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
    public String toAdmin(@ModelAttribute("emptyProduct")Product product, Model model, Principal principal){
        String principalName = principal.getName();
        User byUserName = userService.findByUserName(principalName);
        model.addAttribute("currentUser", byUserName);
        model.addAttribute("currentProduct", new Product());
        return "admin";
    }

    @RequestMapping(value = "/product/add", method = RequestMethod.POST)
    public String addProduct(@ModelAttribute("emptyProduct") Product product, Model model, Principal principal){
        String principalName = principal.getName();
        User byUserName = userService.findByUserName(principalName);
        model.addAttribute("currentUser", byUserName);

        productService.save(product);
        return "redirect:/admin";    // add opportunity save product other users since ROLE_SELLER
    }
}
