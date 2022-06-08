package com.hotel.hotel.controller;

import com.hotel.hotel.exception.HotelNotFoundException;
import com.hotel.hotel.model.AccountingEntity;
import com.hotel.hotel.model.HotelEntity;
import com.hotel.hotel.model.RoomEntity;
import com.hotel.hotel.model.StaffEntity;
import com.hotel.hotel.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AccountingController {



    @Autowired
    AccountingRepository accountingRepository;


    @Autowired
    HotelRepository hotelRepository;

    @GetMapping("/hotel/accounting")
    public String Accounting(@RequestParam("hotelId") int hotelId, Model model){

        model.addAttribute("hotelId",hotelId);
        try {
            model.addAttribute("hotel",hotelRepository.findById(hotelId).orElseThrow(HotelNotFoundException::new));
        } catch (HotelNotFoundException e) {
            model.addAttribute("message","Hotel not found!");
        }
        return "/accounting.jsp";
    }


    @PostMapping("/hotel/accounting")
    public String Accounting(Model model,
                          @ModelAttribute("hotelId") int hotelId,
                          @ModelAttribute("accounting") AccountingEntity accounting){
        try {
            HotelEntity hotel = hotelRepository.findById(hotelId)
                    .orElseThrow(HotelNotFoundException::new);

            if(accounting.getId()==null){
                accounting.setHotel(hotel);
                accountingRepository.save(accounting);
                hotelRepository.save(hotel);
            }

            model.addAttribute("hotel",hotel);
            model.addAttribute("accounting",accounting);

        }catch (HotelNotFoundException e){
            model.addAttribute("message","Hotel not found!");
        }
        return "/accounting.jsp";
    }

}

