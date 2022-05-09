package com.hotel.hotel.dto;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Builder
public class HotelDto {

    @Getter @Setter
    private int id;

    @Getter @Setter
    private String name;

    @Getter @Setter
    private String city;

    @Getter @Setter
    private String address;
}
