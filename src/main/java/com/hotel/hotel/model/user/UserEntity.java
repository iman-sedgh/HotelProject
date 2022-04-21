package com.hotel.hotel.model.user;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;
import java.util.*;

@Entity
@Table(	name = "users",
        uniqueConstraints = {
                @UniqueConstraint(columnNames = "username"),
                @UniqueConstraint(columnNames = "email")
        })
public class UserEntity {
    @Id
    @Getter @Setter
    @GeneratedValue(generator = "UUID")
    @GenericGenerator(
            name = "UUID",
            strategy = "org.hibernate.id.UUIDGenerator"
    )
    @Column(columnDefinition = "BINARY(16)",name = "id", updatable = false, nullable = false)
    private UUID id;


    @Size(max = 20)
    @Getter @Setter @Column(name = "first_name", nullable = false)
    private String firstName;

    @Size(max = 20)
    @Getter @Setter @Column(name = "last_name")
    private String lastName;

    @Email @Size(max = 50)
    @Getter @Setter @Column
    private String email;

    @Size(max = 20)
    @Getter @Setter @Column(nullable = false)
    private String username;

    @Size(max = 120)
    @Getter @Setter @Column(nullable = false)
    private String password;

//    @Getter @Setter
//    private Set<String> roles = new HashSet<>();


    public UserEntity(){}

    public UserEntity(String firstName, String lastName, String email, String password){
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
//        this.username = username;
        this.password = password;
//        this.roles = roles;
    }
}