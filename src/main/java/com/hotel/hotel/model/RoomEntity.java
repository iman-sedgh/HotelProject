package com.hotel.hotel.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.*;

@Entity
public class RoomEntity {



    @Id
    @Getter @Setter
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private int id;

    @Getter @Setter
    private String type;

    @ManyToMany
    @Getter @Setter
    private List<ReservationEntity> reservations;

    // show when(start,end date) the room reserverd
    @ElementCollection @Getter @Setter
    private List<HashMap> reserved_dates = new ArrayList<HashMap>();

    @Getter @Setter
    private int roomNumber;


    @ManyToOne()
    @Getter @Setter
    private HotelEntity hotel;

    public RoomEntity addReservation(ReservationEntity reservation){
        this.reservations.add(reservation);
        HashMap hMap = new HashMap();
        hMap.put("start",reservation.getCheckInDT());
        hMap.put("end",reservation.getCheckOutDT());

        if (! this.reserved_dates.contains(hMap))
        this.reserved_dates.add(hMap);

        return this;
    }

    public RoomEntity(){}
    public RoomEntity(String type){
        this.type = type;

    }

}
