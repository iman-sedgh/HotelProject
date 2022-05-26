package com.hotel.hotel.model;

import lombok.Getter;
import lombok.Setter;
import lombok.extern.apachecommons.CommonsLog;

import javax.persistence.*;
import javax.validation.constraints.Size;

@Entity
@Table (name= "staffs",
        uniqueConstraints = {
                @UniqueConstraint(columnNames = "national_code"),
                @UniqueConstraint(columnNames = "phone_number"),
        })

public class StaffEntity {

    @Id
    @Getter @Setter
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private int id;

    @Getter @Setter @Column(nullable = false)
    private double salary;

    @Size(max = 20)
    @Getter @Setter @Column(nullable = false)
    private String username;

    @Size(max = 20)
    @Getter @Setter @Column(name = "family_name", nullable = false)
    private String familyName;

    @Getter @Setter @Column(nullable = false)
    private String address;

    @Size(max = 10)
    @Getter @Setter @Column(name = "national_code",nullable = false)
    private String nationalCode;

    @Size(max = 11)
    @Getter @Setter @Column(name = "phone_number", nullable = false)
    private String phoneNumber;

    @ManyToOne
    @Getter @Setter
    private StaffPositionEntity staffPosition;

    @ManyToOne
    @Getter @Setter
    private HotelEntity hotel;

    //fk to pos

    public StaffEntity(String nationalCode) {
        this.nationalCode = nationalCode;
    }
    public StaffEntity(){}

    public StaffEntity(String salary, String username, String familyName,
                       String address, String nationalCode, String phoneNumber, HotelEntity hotel) {
    }
}
