package ua.lv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import ua.lv.entity.User;
import ua.lv.service.UserService;

/**
 * Created by User on 09.03.2019.
 */
@Controller
public class MainController {

    @Autowired
    UserService userService;


    @GetMapping("/")
    public String toMainPage(Model model){
//        model.addAttribute("emptyUser", new User());
        return "start";
    }
}
