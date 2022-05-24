package com.hotel.hotel.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
public class StaffPositionEntity {

    @Id
    @Getter @Setter
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private int id;

    @Getter @Setter
    private String positionName;

    @ManyToOne
    @Getter @Setter
    private HotelEntity hotel;

    @OneToMany
    @Getter @Setter
    private List<StaffEntity> staffs = new ArrayList<>();

    public StaffPositionEntity(){}
    public StaffPositionEntity(String positionName){
        this.positionName = positionName;
    }
}
