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

    @Getter @Setter
    private boolean isReserved;


    @ManyToOne()
    @Getter @Setter
    private HotelEntity hotel;

    public RoomEntity(){}
    public RoomEntity(String type){
        this.type = type;
        isReserved = false;
    }

}
