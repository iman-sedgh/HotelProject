package com.hotel.hotel.model;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Builder
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

    @OneToMany
    @Getter @Setter
    private List<RoomEntity> rooms = new ArrayList<>();
    public HotelEntity addRoom(RoomEntity room){
        this.rooms.add(room);
        room.setHotel(this);
        return this;
    }
    public HotelEntity removeRoom(RoomEntity room){
        this.rooms.remove(room);
        return this;
    }

    @OneToMany
    @Getter @Setter
    private List<StaffPositionEntity> staffPosition=new ArrayList<>();
    public HotelEntity addStaff(StaffPositionEntity staffPosition){
        this.staffPosition.add(staffPosition);
        staffPosition.setHotel(this);
        return this;
    }
    public HotelEntity removeStaff(StaffPositionEntity staffPosition){
        this.staffPosition.remove(staffPosition);
        return this;
    }

    public HotelEntity(){}

    public HotelEntity(int id, String name, String city, String address, String summary, String description, int roomNumber, int floorNumber, List<RoomEntity> rooms, List<StaffPositionEntity> staffPosition) {
        this.id = id;
        this.name = name;
        this.city = city;
        this.address = address;
        this.summary = summary;
        this.description = description;
        this.roomNumber = roomNumber;
        this.floorNumber = floorNumber;
        this.rooms = rooms;
        this.staffPosition = staffPosition;
    }
}
