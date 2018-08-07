package com.example.learnspring.repository;

import com.example.learnspring.model.Product;
import org.springframework.data.repository.CrudRepository;

public interface ProductRepo extends CrudRepository<Product,Long> {
    Iterable<Product> findAllByName(String name);
    Iterable<Product> findAllByProductGroup(String group);
}
