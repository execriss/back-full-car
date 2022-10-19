package com.souldev.cart.repositories;

import com.souldev.cart.entities.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product,String> {
    List<Product> findByCategoryAndIdNot(String category, String ProductId);
    List<Product> findFirst4ByOrderByPriceAsc();

    @Query(value = "SELECT * FROM product WHERE product.nombre LIKE %:q%", nativeQuery = true)
    List<Product> findByTitle(@Param("q")String q);
}
