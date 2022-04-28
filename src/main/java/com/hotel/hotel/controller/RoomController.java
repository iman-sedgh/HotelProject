package com.hotel.hotel.controller;



import com.hotel.hotel.model.RoomEntity;
import com.hotel.hotel.repository.RoomRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RoomController {
    @Autowired
    RoomRepository roomRepository;

    @RequestMapping("/hotelInfo")
    public String Room(){
        RoomEntity room1=new RoomEntity();
        room1.setType("2 khab");
        room1.setReserved(true);
        roomRepository.save(room1);
        return "hotelInformation.jsp";
    }

}
