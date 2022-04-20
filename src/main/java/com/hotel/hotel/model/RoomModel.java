package com.hotel.hotel.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class RoomModel {
    @Id
    private int id;
    private String type;
    private boolean isReserved;
    @OneToOne(cascade= CascadeType.ALL)
    private HotelModel hotel;

}
