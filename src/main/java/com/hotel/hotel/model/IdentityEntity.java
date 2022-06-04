package com.hotel.hotel.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.Size;

@Entity
@Table(	name = "users",
        uniqueConstraints = {
                @UniqueConstraint(columnNames = "username"),
                @UniqueConstraint(columnNames = "email")
        })
public class IdentityEntity {
    @Id
    @Getter @Setter
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private int id;

    @Email @Size(max = 50)
    @Getter @Setter @Column
    private String email;

    @Size(max = 20)
    @Getter @Setter @Column(nullable = false)
    private String username;

    @Size(max = 120)
    @Getter @Setter @Column(nullable = false)
    private String password;


    public IdentityEntity(){}

    public IdentityEntity(String username, String email, String password){
        this.email = email;
        this.username = username;
        this.password = password;
    }
}