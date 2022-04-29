package com.hotel.hotel.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
public class StaffPositionEntity {

    @Id
    @Getter @Setter
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private int id;

    @Getter @Setter
    private String positionName;

    @ManyToOne()
    @Getter @Setter
    private HotelEntity hotel;
}
