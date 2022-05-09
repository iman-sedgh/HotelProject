package com.hotel.hotel.payload;

import lombok.Getter;
import lombok.Setter;


public class CreateHotelRequest {
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

    public CreateHotelRequest(){}
}
