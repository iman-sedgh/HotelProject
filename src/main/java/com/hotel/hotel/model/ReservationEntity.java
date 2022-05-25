package com.hotel.hotel.model;

import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
public class ReservationEntity
{

    @Id @Getter @Setter
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private int id;


    @ManyToOne
    @Getter @Setter
    private IdentityEntity user;

    @ManyToMany
    @Getter @Setter
    private List<RoomEntity> rooms = new ArrayList<>();

    @DateTimeFormat(pattern="yyyy/MM/dd")
    @Getter @Setter
    private Date checkInDT;

    @DateTimeFormat(pattern="yyyy/MM/dd")
    @Getter @Setter
    private Date checkOutDT;

    @Getter @Setter
    private int price;

    @Getter @Setter
    private String status;

    public ReservationEntity addRoom(RoomEntity room){
        this.rooms.add(room);
        room.addReservation(this);
        return this;
    }

}
