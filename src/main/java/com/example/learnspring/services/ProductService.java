package com.example.learnspring.services;

import com.example.learnspring.model.Product;
import com.example.learnspring.repository.ProductRepo;
import org.springframework.stereotype.Service;

@Service
public class ProductService {

    private ProductRepo productRepo;

    public ProductService(ProductRepo productRepo) {
        this.productRepo = productRepo;
    }

    public Iterable<Product> getAllProducts(){
        return productRepo.findAll();
    }

    public Product addProduct(Product product) {
        return productRepo.save(product);
    }

    public Product editProduct(Product product) {
        return productRepo.save(product);
    }

    public Product deleteProduct(Product product) {
        productRepo.delete(product);
        return product;
    }

    public Product deleteProductById(long id) {
        Product product=productRepo.findById(id).orElse(null);
        productRepo.deleteById(id);
        return product;
    }

    public Iterable<Product> getAllProductsByName(String name) {

        return productRepo.findAllByName(name);

    }

    public Iterable<Product> getAllProductsByGroup(String group) {
        return productRepo.findAllByProductGroup(group);
    }
}
