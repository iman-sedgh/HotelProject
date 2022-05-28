package com.hotel.hotel.model;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

@Entity
public class HotelEntity {
    @Id
    @Getter @Setter
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private int id;

    @Getter @Setter
    private String name;

    @Getter @Setter
    private String city;

    @Getter @Setter
    private String address;

    @Getter @Setter
    private String summary;

    @Getter @Setter
    private String description;

    @Getter @Setter
    private int roomNumber;

    @Getter @Setter
    private int floorNumber;

    @Getter @Setter @Column(columnDefinition = "integer default 1")
    private int starNumber;

    @Getter @Setter
    private String owner;

    @OneToMany
    @Getter @Setter
    private List<RoomEntity> rooms = new ArrayList<>();

    @OneToMany
    @Getter @Setter
    private List<StaffPositionEntity> staffPositions = new ArrayList<>();

    @OneToMany
    @Getter @Setter
    private List<StaffEntity> staffs = new ArrayList<>();

    @ElementCollection @Getter @Setter
    private List<String> images = new ArrayList<>();

    public HotelEntity(){}
}
