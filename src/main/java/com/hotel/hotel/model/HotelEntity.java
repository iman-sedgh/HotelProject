package com.hotel.hotel.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
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

//    @Getter @Setter
//    private String location;

    @Getter @Setter
    private String summary;

    @Getter @Setter
    private String description;

    @Getter @Setter
    private int roomNumber;

    @Getter @Setter
    private int floorNumber;

    @OneToMany(mappedBy = "hotel")
    @Getter @Setter
    private List<RoomEntity> rooms = new ArrayList<>();

    public void addRoom(RoomEntity room){
        this.rooms.add(room);
        room.setHotel(this);
    }
    @OneToMany(mappedBy = "hotel")
    @Getter @Setter
    private List<StaffPositionEntity> staffPosition=new ArrayList<>();

    public void addStaff(StaffPositionEntity staffPosition){
        this.staffPosition.add(staffPosition);
        staffPosition.setHotel(this);
    }
}
