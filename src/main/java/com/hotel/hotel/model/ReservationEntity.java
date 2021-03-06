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
    private HotelEntity hotel;


    @Getter @Setter
    private String costumerFullName;

    @Getter @Setter
    private String costumerNationalID;

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

    public ReservationEntity(){}

    public ReservationEntity(HotelEntity hotel, String costumerFullName, String costumerNationalID, Date checkInDT, Date checkOutDT, int price) {
        this.hotel = hotel;
        this.costumerFullName = costumerFullName;
        this.costumerNationalID = costumerNationalID;
        this.checkInDT = checkInDT;
        this.checkOutDT = checkOutDT;
        this.price = price;
    }

}
