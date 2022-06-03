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
    private Integer id;

    @Getter @Setter
    private String type;

    @ManyToMany
    @Getter @Setter
    private List<ReservationEntity> reservations;

//     show when(start,end date) the room reserverd
    @ElementCollection @Getter @Setter
    private List<HashMap<String,Date>> reserved_dates = new ArrayList<>();

    @Getter @Setter
    private int roomNumber;

    @Getter @Setter
    private int price;

    @Getter @Setter
    private int weekendPrice;
    
    @ManyToOne
    @Getter @Setter
    private HotelEntity hotel;

    public RoomEntity addReservation(ReservationEntity reservation){
        this.reservations.add(reservation);
        HashMap<String,Date> hMap = new HashMap<>();
        hMap.put("start",reservation.getCheckInDT());
        hMap.put("end",reservation.getCheckOutDT());

        if (! this.reserved_dates.contains(hMap))
            this.reserved_dates.add(hMap);

        return this;
    }

    public RoomEntity(){}
    public RoomEntity(String type,int roomNumber,HotelEntity hotel){
        this.type = type;
        this.roomNumber = roomNumber;
        this.hotel = hotel;
    }

}
