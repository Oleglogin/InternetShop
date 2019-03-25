package ua.lv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ua.lv.entity.Orders;
import ua.lv.entity.Product;
import ua.lv.entity.Purchase;
import ua.lv.entity.User;
import ua.lv.service.OrdersService;
import ua.lv.service.ProductService;
import ua.lv.service.PurchaseService;
import ua.lv.service.UserService;

import java.security.Principal;
import java.util.List;

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
    @Autowired
    OrdersService ordersService;
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

//    @RequestMapping(value = "/order/add/", method = RequestMethod.POST)
//    public String addOrders(@ModelAttribute("emptyOrders")Orders orders,
//                            Model model, Principal principal){
//        String principalName = principal.getName();
//        User byUserNAme = userService.findByUserName(principalName);
//        model.addAttribute("currentUser", byUserNAme);
//
//        model.addAttribute("countProductInBasket", purchaseService.countProductsByUser(byUserNAme.getId()));
//        model.addAttribute("purchaseListInBasket", purchaseService.purchaseListInBasket(byUserNAme.getId()));
//        model.addAttribute("amountPrice", purchaseService.amountInBasket(byUserNAme.getId()));
//        model.addAttribute("countProductInBasket",purchaseService.amountInBasket(byUserNAme.getId()));
//        orders.setUser(byUserNAme);
//        ordersService.saveOrders(orders);
//        return "redirect:/basket";
//
//    }
}
