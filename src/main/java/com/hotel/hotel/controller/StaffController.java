package com.hotel.hotel.controller;

import com.hotel.hotel.exception.HotelNotFoundException;
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
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class StaffController {

    @Autowired
    StaffRepository staffRepository;

    @Autowired
    HotelRepository hotelRepository;

    @GetMapping("/hotel/staffs/add")
    public String addStaffForm(@RequestParam("hotelId") int hotelId, Model model){
        return "/addStaffForm.jsp";
    }

    @PostMapping("/hotel/staffs/add")
    public String addStaff(Model model,
                          @ModelAttribute("hotelId") int hotelId,
                          @ModelAttribute("salary") String salary,
                          @ModelAttribute("username") String username,
                          @ModelAttribute("familyName") String familyName,
                          @ModelAttribute("address") String address,
                          @ModelAttribute("nationalCode") String nationalCode,
                          @ModelAttribute("phoneNumber") String phoneNumber){
        try {
            HotelEntity hotel = hotelRepository.findById(hotelId)
                    .orElseThrow(HotelNotFoundException::new);
            StaffEntity staff = new StaffEntity(salary,username,familyName,
                    address,nationalCode,phoneNumber,hotel);
            staffRepository.save(staff);

            model.addAttribute("hotel",hotel);
        }catch (HotelNotFoundException e){
            model.addAttribute("message","Hotel not found!");
        }
        return "/hotelInformation.jsp";
    }

    @GetMapping("/hotel/staffs/remove")
    public String removeRoom(Model model,
                             @RequestParam("hotelId") int hotelId,
                             @RequestParam("staffId") int staffId){
        staffRepository.deleteById(staffId);
        return "/hotel?hotelId="+hotelId;
    }
}


