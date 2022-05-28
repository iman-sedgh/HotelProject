package com.hotel.hotel.controller;

import com.hotel.hotel.repository.HotelRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.security.Principal;

@Controller
public class AdminController {

    @Autowired
    HotelRepository hotelRepository;


    @GetMapping("/user/hotels")
    private String getUserHotels(Model model, Principal principal){
        model.addAttribute("username",principal.getName());
        model.addAttribute("hotels",hotelRepository.findAllByOwner(principal.getName()).toArray());
        return "/userHotels.jsp";
    }
}
