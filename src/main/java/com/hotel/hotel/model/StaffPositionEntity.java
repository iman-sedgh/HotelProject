package com.hotel.hotel.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

public class StaffPositionEntity {

    @Id
    @Getter @Setter
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private int id;

    @Getter @Setter
    private String positionName;

    @ManyToOne
    private HotelEntity hotel;

}
