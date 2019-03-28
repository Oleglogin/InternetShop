package ua.lv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ua.lv.entity.Product;
import ua.lv.entity.Purchase;
import ua.lv.entity.User;
import ua.lv.service.ProductService;
import ua.lv.service.PurchaseService;
import ua.lv.service.UserService;

import java.security.Principal;

/**
 * Created by User on 12.03.2019.
 */
@Controller
public class PurchaseController {
    @Autowired
    UserService userService;
    @Autowired
    ProductService productService;
    @Autowired
    PurchaseService purchaseService;

    @RequestMapping(value = "/purchaseAdd/{product.id}/{currentUser.id}", method = RequestMethod.POST)
    public String addPurchase(@ModelAttribute("emptyPurchase")Purchase purchase,
                           @PathVariable("product.id")int ProductId,
                           @PathVariable("currentUser.id")int UserId){
        Product productId = productService.getByProductId(ProductId);
        User userId = userService.getUserById(UserId);
        purchase.setProduct(productId);
        purchase.setUser(userId);

        int price = ((int) purchase.getProduct().getPrice());
        int amount = purchase.getCount();
        purchase.setAmount(price * amount);

        purchaseService.save(purchase);
        return "redirect:/basket";
    }

    @RequestMapping(value = "/removeProductFromPurchase/{id}", method = RequestMethod.GET)
    public String remove(@PathVariable("id") int id){
        purchaseService.delete(id);
        return "redirect:/basket";
    }

    @RequestMapping(value = "fillOrder/{id}", method = RequestMethod.POST)
    public String fillOrders(Model model, Principal principal,
                             @PathVariable("id") int id){
        String principalName = principal.getName();
        User basketUser = userService.findByUserName(principalName);
        model.addAttribute("currentUser", basketUser);

        model.addAttribute("countProductInBasket", purchaseService.countProductsByUser(basketUser.getId()));
//        model.addAttribute("purchaseListInBasket", purchaseService.purchaseListInBasket(basketUser.getId()));
        model.addAttribute("amountPrice", purchaseService.amountInBasket(basketUser.getId()));
        model.addAttribute("countProductInBasket",purchaseService.amountInBasket(basketUser.getId()));
        purchaseService.successOrder(id);
        return "basket";
    }

}