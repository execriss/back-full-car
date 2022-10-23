package com.souldev.cart.entities;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;
import org.springframework.stereotype.Service;

import javax.persistence.*;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@Entity
@AllArgsConstructor
@NoArgsConstructor
public class Product {
    @Id
    @GeneratedValue(generator = "UUID")
    @GenericGenerator(name = "UUID", strategy = "org.hibernate.id.UUIDGenerator")
    @Getter @Setter
    private String id;
    @NotBlank @NotNull
    @Getter @Setter
    private String name;
    @NotNull @DecimalMin(value = "0.1")
    @Getter @Setter
    private Double price;
    @NotBlank @NotNull
    @Getter @Setter
    private String description;
    @NotBlank @NotNull
    @Getter @Setter
    private String image;
    @NotBlank @NotNull
    @Getter @Setter
    private String marca;
    @NotBlank @NotNull
    @Getter @Setter
    private boolean importado;

    @NotNull(message="Es requerida la categoria")
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "fk_categoria", nullable = false)
    private Category category;
}
