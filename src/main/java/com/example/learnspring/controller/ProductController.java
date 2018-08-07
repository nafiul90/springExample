package com.example.learnspring.controller;

import com.example.learnspring.model.Product;
import com.example.learnspring.model.Type;
import com.example.learnspring.repository.ProductRepo;
import com.example.learnspring.services.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("product")
public class ProductController {

    private ProductService productService;

    public ProductController(ProductService productService) {
        this.productService = productService;
    }

    @GetMapping("/showProducts")
    public ModelAndView showProducts(){
        ModelAndView mv =new ModelAndView("products");
        mv.addObject("products",productService.getAllProducts());
        return mv;
    }

    @GetMapping("/addProduct")
    public ModelAndView addProducts(){
        Product product=new Product();
        ModelAndView mv =new ModelAndView("addProduct");
        mv.addObject("product",productService.getAllProducts());
        return mv;
    }


    @GetMapping("/products")
    @ResponseBody
    public Iterable<Product> getAllProducts(){
        return productService.getAllProducts();
    }

    @GetMapping("productsName/{name}")
    @ResponseBody
    public Iterable<Product> getProductByName(@PathVariable String name){
        return productService.getAllProductsByName(name);
    }

    @GetMapping("productsGroup/{group}")
    @ResponseBody
    public Iterable<Product> getProductByGroup(@PathVariable String group){
        return productService.getAllProductsByGroup(group);
    }


    @GetMapping("add")
    @ResponseBody
    public Product addProduct(Product product){
        return productService.addProduct(product);
    }

    @PutMapping("edit")
    @ResponseBody
    public Product editProduct(@RequestBody Product product){
        return productService.editProduct(product);
    }

    @DeleteMapping("delete")
    @ResponseBody
    public Product deleteProduct(@RequestBody Product product){
        return productService.deleteProduct(product);
    }

    @DeleteMapping("delete/{id}")
    @ResponseBody
    public Product deleteProduct(@PathVariable long id){
        return productService.deleteProductById(id);
    }



}
