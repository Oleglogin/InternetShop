package ua.lv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import ua.lv.entity.User;
import ua.lv.service.MainImgService;
import ua.lv.service.ProductService;
import ua.lv.service.UserService;

/**
 * Created by User on 09.03.2019.
 */
@Controller
public class MainController {

    @Autowired
    UserService userService;
    @Autowired
    ProductService productService;
    @Autowired
    MainImgService mainImgService;


    @GetMapping("/")
    public String toMainPage(Model model){
        model.addAttribute("productList", productService.productList());
        model.addAttribute("mainImgList",mainImgService.MainImgList());
        return "welcome";
    }

}
