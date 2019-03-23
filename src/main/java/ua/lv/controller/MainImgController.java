package ua.lv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ua.lv.entity.MainImg;
import ua.lv.entity.Product;
import ua.lv.entity.User;
import ua.lv.service.MainImgService;
import ua.lv.service.UserService;

import java.security.Principal;

/**
 * Created by User on 14.03.2019.
 */
@Controller
public class MainImgController {

    @Autowired
    UserService userService;
    @Autowired
    MainImgService mainImgService;



    @RequestMapping(value = "/mainImg/add", method = RequestMethod.POST)
    public String addProduct(@ModelAttribute("emptyMainImg")MainImg mainImg, Model model, Principal principal){
        String principalName = principal.getName();
        User byUserName = userService.findByUserName(principalName);
        model.addAttribute("currentUser", byUserName);
        mainImgService.save(mainImg);
        return "redirect:/admin";
    }

    @RequestMapping(value = "/mainImgRemove/{id}", method = RequestMethod.GET)
    public String mainImgRemove(@PathVariable("id") int id){
        mainImgService.delete(id);
        return "redirect:/welcome";
    }
}
