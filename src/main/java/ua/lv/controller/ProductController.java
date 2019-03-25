package ua.lv.controller;

import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ua.lv.entity.MainImg;
import ua.lv.entity.Product;
import ua.lv.entity.Purchase;
import ua.lv.entity.User;
import ua.lv.service.ProductService;
import ua.lv.service.PurchaseService;
import ua.lv.service.UserService;

import java.security.Principal;

/**
 * Created by User on 11.03.2019.
 */
@Controller
public class ProductController {
    @Autowired
    UserService userService;

    @Autowired
    ProductService productService;
    @Autowired
    PurchaseService purchaseService;

    @RequestMapping(value = "/product/add", method = RequestMethod.POST)
    public String addProduct(@ModelAttribute("emptyProduct") Product product,
                             Principal principal){
        String principalName = principal.getName();
        User byUserName = userService.findByUserName(principalName);

        product.setUser(byUserName);

        productService.save(product);
        return "redirect:/admin";
    }


    @RequestMapping(value = "/productData/{id}", method = RequestMethod.GET)
    public String productData(@PathVariable("id") int id, Model model, Principal principal){

        String principalName = principal.getName();
        User byUserName = userService.findByUserName(principalName);
        model.addAttribute("currentUser", byUserName);


        model.addAttribute("countProductInBasket",purchaseService.countProductsByUser(byUserName.getId()));
        model.addAttribute("emptyPurchase", new Purchase());
        model.addAttribute("product", productService.getByProductId(id));
        return "productData";
    }


    @RequestMapping(value = "/sortByCategory/{category}", method = RequestMethod.GET)
    public String sortByCategory(@PathVariable("category")String category, Model model, Principal principal){
        String principalName = principal.getName();
        User byUserName = userService.findByUserName(principalName);
        model.addAttribute("currentUser", byUserName);

        model.addAttribute("productList",productService.categoryProduct(category));

        return "welcome";
    }



    @RequestMapping(value = "/productRemove/{id}")
    public String productRemove(@PathVariable("id") int id){
        productService.delete(id);
        return "redirect:/admin";
    }

    @RequestMapping(value = "/productEdit/{id}", method = RequestMethod.GET)
    public String productEdit(@PathVariable("id")int id,
                              Model model, Principal principal,
                              @ModelAttribute("emptyMainImg")MainImg mainImg,
                              @ModelAttribute("emptyProduct")Product product,
                              @ModelAttribute("emptyUser")User user){
        String principalName = principal.getName();
        User byUserName = userService.findByUserName(principalName);
        model.addAttribute("currentUser" , byUserName);

        model.addAttribute("countProduct", productService.countProduct());
        model.addAttribute("countUser", userService.countUser());
        model.addAttribute("userList", userService.listUsers());
        model.addAttribute("productList", productService.productList());

        model.addAttribute("emptyProduct", productService.getByProductId(id));
        return "admin";
    }
}
