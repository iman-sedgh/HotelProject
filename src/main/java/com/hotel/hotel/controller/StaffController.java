package com.hotel.hotel.controller;

import com.hotel.hotel.exception.HotelNotFoundException;
import com.hotel.hotel.exception.StaffNotFoundException;
import com.hotel.hotel.model.HotelEntity;
import com.hotel.hotel.model.RoomEntity;
import com.hotel.hotel.model.StaffEntity;
import com.hotel.hotel.model.StaffPositionEntity;
import com.hotel.hotel.repository.HotelRepository;
import com.hotel.hotel.repository.StaffPositionRepository;
import com.hotel.hotel.repository.StaffRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.persistence.ManyToOne;

@Controller
public class StaffController {

    @Autowired
    StaffRepository staffRepository;

    @Autowired
    StaffPositionRepository staffPositionRepository;

    @Autowired
    HotelRepository hotelRepository;

    @GetMapping("/hotel/staffs/add")
    public String addStaffForm(@RequestParam("hotelId") int hotelId, Model model){
        return "/addStaffForm.jsp";
    }

    @PostMapping("/hotel/staffs/add")
    public String addStaff(Model model,
                          @RequestBody StaffEntity staff,
                          @RequestBody int hotelId,
                          @RequestBody String positionName){
        try {
            HotelEntity hotel = hotelRepository.findById(hotelId)
                    .orElseThrow(HotelNotFoundException::new);
            StaffPositionEntity staffPosition = staffPositionRepository.findByPositionName(positionName)
                    .orElseThrow(StaffNotFoundException::new);


          if(staff.getId()==null){
                staff.setHotel(hotel);
                staff.setStaffPosition(staffPosition);
                staffRepository.save(staff);
            }

            model.addAttribute("hotel",hotel);
        }catch (HotelNotFoundException e){
            model.addAttribute("message","Hotel not found!");
        } catch (StaffNotFoundException e) {
            model.addAttribute("message","Staff Position not found!");
        }
        return "/hotelInformation.jsp";
    }

    @ManyToOne

    @GetMapping("/hotel/staffs/remove")
    public String removeRoom(Model model,
                             @RequestParam("hotelId") int hotelId,
                             @RequestParam("staffId") int staffId){
        staffRepository.deleteById(staffId);
        return "/hotel?hotelId="+hotelId;
    }
}


