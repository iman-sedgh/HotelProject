package com.hotel.hotel.controller;

import com.hotel.hotel.model.RoomEntity;
import com.hotel.hotel.model.StaffPositionEntity;
import com.hotel.hotel.repository.RoomRepository;
import com.hotel.hotel.repository.StaffPositionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.security.Principal;

@Controller
public class InformationController {
    @Autowired
    RoomRepository roomRepository;
    @Autowired
    StaffPositionRepository staffPositionRepository;

    @RequestMapping("/hotelInfo")
    public String info(Model model){


        //for room

        RoomEntity room1=new RoomEntity();
        model.addAttribute("room",room1);
        room1.setType("2 khab");
        room1.setReserved(true);
        roomRepository.save(room1);
        //for staff
        StaffPositionEntity modir = new StaffPositionEntity();
        model.addAttribute("staffPosition",modir);
        modir.setPositionName("modir");
        staffPositionRepository.save(modir);
        return "hotelInformation.jsp";
    }

}
