package com.hotel.hotel.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class RoomEntity {
    @Id
    @Getter @Setter
    private int id;

    @Getter @Setter
    private String type;

    @Getter @Setter
    private boolean isReserved;

    @OneToOne(cascade= CascadeType.ALL)
    @Getter @Setter
    private HotelEntity hotel;

}
