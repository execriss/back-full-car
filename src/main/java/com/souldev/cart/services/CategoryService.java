package com.souldev.cart.services;

import com.souldev.cart.entities.Category;
import com.souldev.cart.repositories.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class CategoryService {

    private CategoryRepository categoryRepository;
    @Autowired
    public CategoryService(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }


    @Transactional
    public List<Category> findAll() throws Exception {
        try {
            List<Category> categorias = this.categoryRepository.findAll();
            return categorias;
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        }
    }


    @Transactional
    public Category findById(long id) throws Exception {
        try {
            Optional<Category> opt = this.categoryRepository.findById(id);
            return opt.get();
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        }
    }


    @Transactional
    public Category saveOne(Category entity) throws Exception {
        try {
            Category categoria = this.categoryRepository.save(entity);
            return categoria;
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        }
    }


    @Transactional
    public Category updateOne(Category entity, long id) throws Exception {
        try {
            Optional<Category> opt = this.categoryRepository.findById(id);
            Category categoria = opt.get();
            categoria = this.categoryRepository.save(entity);
            return categoria;
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        }
    }


    @Transactional
    public boolean deleteById(long id) throws Exception {
        try {
            Optional<Category> opt = this.categoryRepository.findById(id);
            if (!opt.isEmpty()) {
                Category categoria = opt.get();

                this.categoryRepository.save(categoria);
            } else {
                throw new Exception();
            }
            return true;
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        }
    }
}
