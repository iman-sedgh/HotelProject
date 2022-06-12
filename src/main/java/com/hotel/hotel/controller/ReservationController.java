package com.hotel.hotel.controller;


import com.hotel.hotel.model.HotelEntity;
import com.hotel.hotel.model.RoomEntity;
import com.hotel.hotel.repository.HotelRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.ArrayList;
import java.util.Date;

@Controller
public class ReservationController {

    @Autowired
    public HotelRepository hotelRepository;

    @PostMapping("/hotel/reserving/setTime")
    public String getFreeRooms(@PathVariable("id") int id, Model model,
                               @ModelAttribute("start")Date start,
                               @ModelAttribute("end")Date end){
        HotelEntity hotel = hotelRepository.getById(id);
        model.addAttribute("hotel",hotel);

        ArrayList<RoomEntity> rooms = new ArrayList<>();
        hotel.getRooms().forEach(room->{

        });
        model.addAttribute("rooms",rooms);
        return "/singlehotel.jsp";
    }
}
