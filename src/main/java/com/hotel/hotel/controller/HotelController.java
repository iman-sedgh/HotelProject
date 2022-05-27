package com.hotel.hotel.controller;

import com.hotel.hotel.dto.HotelDto;
import com.hotel.hotel.exception.HotelNotFoundException;
import com.hotel.hotel.model.HotelEntity;
import com.hotel.hotel.model.RoomEntity;
import com.hotel.hotel.model.StaffPositionEntity;
import com.hotel.hotel.repository.HotelRepository;
import com.hotel.hotel.repository.RoomRepository;
import com.hotel.hotel.repository.StaffPositionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.MissingServletRequestParameterException;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class HotelController {
    @Autowired
    HotelRepository hotelRepository;

    @GetMapping("/hotel")
    public String hotelInfo(Model model, @RequestParam("id") int id){
        try {
            HotelEntity hotelInfo = hotelRepository.findById(id)
                    .orElseThrow(HotelNotFoundException::new);
            model.addAttribute("hotel",hotelInfo);
            return "hotelInformation.jsp";
        }catch (HotelNotFoundException e){
            model.addAttribute("message","Hotel not found!");
            return "hotelInformation.jsp";
        }
    }
    @GetMapping("/hotels")
    public String allHotels(Model model){
        List<HotelDto> hotels = hotelRepository.findAll().stream().map(hotelEntity -> HotelDto.builder()
                .id(hotelEntity.getId())
                .name(hotelEntity.getName())
                .city(hotelEntity.getCity())
                .address(hotelEntity.getAddress())
                .build()).toList();
        model.addAttribute("hotels",hotels);
        return "/hotels.jsp";
    }
    @GetMapping("/hotels/city")
    public String allHotelsByCity(Model model,@RequestParam("city") String city){
        List<HotelDto> hotels = hotelRepository.findAllByCity(city).stream().map(hotelEntity -> HotelDto.builder()
                .id(hotelEntity.getId())
                .name(hotelEntity.getName())
                .city(hotelEntity.getCity())
                .address(hotelEntity.getAddress())
                .build()).toList();
        model.addAttribute("hotels",hotels);
        return "/hotels.jsp";
    }
    @GetMapping("/hotels/add")
    public String createHotelForm(Model model){
        return "/createHotelForm.jsp";
    }
    @PostMapping("/hotels/add")
    public String createHotel(@ModelAttribute("hotel") HotelEntity hotel,Model model){
        hotelRepository.save(hotel);
        model.addAttribute("hotel",hotel);
        return "/hotelInformation.jsp";
    }
}
