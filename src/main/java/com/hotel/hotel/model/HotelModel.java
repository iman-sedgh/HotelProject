package com.hotel.hotel.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class HotelModel {
    @Id
    private int id;
    private String name;
    private String city;
    private String address;
//    private String location;
    private String summary;
    private String description;
    private int roomNumber;
    private int floorNumber;

}
