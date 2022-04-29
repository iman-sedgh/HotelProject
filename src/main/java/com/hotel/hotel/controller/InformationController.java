package com.hotel.hotel.controller;

import com.hotel.hotel.model.RoomEntity;
import com.hotel.hotel.model.StaffPositionEntity;
import com.hotel.hotel.repository.RoomRepository;
import com.hotel.hotel.repository.StaffPositionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InformationController {
    @Autowired
    RoomRepository roomRepository;
    @Autowired
    StaffPositionRepository staffPositionRepository;

    @RequestMapping("/hotelInfo")
    public String info(){
        RoomEntity room1=new RoomEntity();
        room1.setType("2 khab");
        room1.setReserved(true);
        roomRepository.save(room1);


            StaffPositionEntity modir = new StaffPositionEntity();
            modir.setPositionName("modir");
            staffPositionRepository.save(modir);
        return "hotelInformation.jsp";
    }

}
