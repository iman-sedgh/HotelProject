package com.hotel.hotel.controller;

import com.hotel.hotel.exception.HotelNotFoundException;
import com.hotel.hotel.model.HotelEntity;
import com.hotel.hotel.model.StaffPositionEntity;
import com.hotel.hotel.repository.HotelRepository;
import com.hotel.hotel.repository.StaffPositionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class StaffPositionController {
    @Autowired
    HotelRepository hotelRepository;

    @Autowired
    StaffPositionRepository staffPositionRepository;


    @GetMapping("/hotel/positions/add")
    public String addStaffPositionForm(Model model, @RequestParam ("hotelId") int hotelId){

        model.addAttribute("hotelId",hotelId);
        return "/addStaffForm.jsp";
    }

    @PostMapping("/hotel/positions/add")
    public String addPosition(Model model,
                           @RequestParam("hotelId") int hotelId,
                           @ModelAttribute("staffPosition") StaffPositionEntity staffPosition){
        try {
            HotelEntity hotel = hotelRepository.findById(hotelId)
                    .orElseThrow(HotelNotFoundException::new);

            staffPosition.setHotel(hotel);
            staffPositionRepository.save(staffPosition);

            model.addAttribute("hotel",hotel);
        }catch (HotelNotFoundException e){
            model.addAttribute("message","Hotel not found!");
        }
        return "/staffList.jsp";
    }

    @GetMapping("/hotel/positions/remove")
    public String removeStaff(Model model,
                              @RequestParam("hotelId") int hotelId,
                              @RequestParam("id") int id){
        staffPositionRepository.deleteById(id);
        return "/hotel?hotelId="+hotelId;
    }
}
