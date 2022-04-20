package com.hotel.hotel.controller;

import com.hotel.hotel.model.HotelModel;
import com.hotel.hotel.repository.HotelRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HotelController {
    @Autowired
    HotelRepository repo;
    @RequestMapping("/iman")
    public String home(){
        HotelModel hotel1 = new HotelModel();
        hotel1.setName("hotel parsian");
        hotel1.setCity("Tehran");
        hotel1.setAddress("Azadi");
        hotel1.setFloorNumber(10);
        hotel1.setRoomNumber(100);
        repo.save(hotel1);
        return "home.jsp";
    }
}
