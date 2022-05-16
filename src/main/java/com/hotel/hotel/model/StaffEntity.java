package com.hotel.hotel.model;

import lombok.Getter;
import lombok.Setter;
import lombok.extern.apachecommons.CommonsLog;

import javax.persistence.*;
import javax.validation.constraints.Size;

@Entity
@Table (name= "staffs",
        uniqueConstraints = {
                @UniqueConstraint(columnNames = "nationalCode"),
                @UniqueConstraint(columnNames = "phoneNumber"),
        })

public class StaffEntity {

    @Id
    @Getter
    @Setter
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private int id;

    @Getter @Setter @Column(name = "salary", nullable = false)
    private double salary;

    @Size(max = 20)
    @Getter @Setter @Column(name = "username", nullable = false)
    private String username;

    @Size(max = 20)
    @Getter @Setter @Column(name = "familyName", nullable = false)
    private String familyName;

    @Getter @Setter @Column(name = "address", nullable = false)
    private String address;

    @Size(max = 10)
    @Getter @Setter @Column(name = "nationalCode", nullable = false)
    private String nationalCode;

    @Size(max = 11)
    @Getter @Setter @Column(name = "phoneNumber", nullable = false)
    private String phoneNumber;


    //fk to pos


    public StaffEntity(double salary, String username, String familyName, String address, String nationalCode, String phoneNumber) {
        this.salary = salary;
        this.username = username;
        this.familyName = familyName;
        this.address = address;
        this.nationalCode = nationalCode;
        this.phoneNumber = phoneNumber;
    }
    @OneToOne()
    @Getter @Setter
    private StaffPositionEntity staffPosition;

}
