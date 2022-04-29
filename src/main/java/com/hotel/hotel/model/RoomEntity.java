package com.hotel.hotel.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
public class RoomEntity {



    @Id
    @Getter @Setter
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private int id;

    @Getter @Setter
    private String type;


    private boolean isReserved;

    public boolean isReserved() {
        return isReserved;
    }

    public void setReserved(boolean reserved) {
        isReserved = reserved;
    }

    @ManyToOne()
    @Getter @Setter
    private HotelEntity hotel;


}
