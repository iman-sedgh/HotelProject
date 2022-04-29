package com.hotel.hotel.controller;

import com.hotel.hotel.model.HotelEntity;
import com.hotel.hotel.repository.HotelRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HotelController {
    @Autowired
    HotelRepository repo;

    @RequestMapping("/hotel")
    public String home(Model model){
        HotelEntity hotel1 = new HotelEntity();
        model.addAttribute("hotel",hotel1);
        hotel1.setName("hotel parsian");
        hotel1.setCity("Tehran");
        hotel1.setAddress("Azadi");
        hotel1.setFloorNumber(10);
        hotel1.setRoomNumber(100);
        repo.save(hotel1);
        return "home.jsp";
    }

    /* @RequestMapping("/hotel")
    public String hotel(Model model){
        HotelEntity h = repo.findById(6).get();
        model.addAttribute("hotel",h );
        return "home.jsp";
    }*/
}
