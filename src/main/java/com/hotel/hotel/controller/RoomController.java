package com.hotel.hotel.controller;

import com.hotel.hotel.exception.HotelNotFoundException;
import com.hotel.hotel.model.HotelEntity;
import com.hotel.hotel.model.RoomEntity;
import com.hotel.hotel.repository.HotelRepository;
import com.hotel.hotel.repository.RoomRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.security.Principal;

@Controller
public class RoomController {

    @Autowired
    RoomRepository roomRepository;

    @Autowired
    HotelRepository hotelRepository;

    @GetMapping("/hotel/rooms")
    public String RoomList(@RequestParam("hotelId") int hotelId, Model model){

        try {
            model.addAttribute("hotel",hotelRepository.findById(hotelId).orElseThrow(HotelNotFoundException::new));
        } catch (HotelNotFoundException e) {
            model.addAttribute("message","Hotel not found!");
        }
        return "/roomList.jsp";
    }

    @GetMapping("/hotel/rooms/add")
    public String addRoomForm(@RequestParam("hotelId") int hotelId, Model model){

        model.addAttribute("hotelId",hotelId);
        return "/addRoomForm.jsp";
    }

    @PostMapping("/hotel/rooms/add")
    public String addRoom(Model model,
                          @ModelAttribute("hotelId") int hotelId,
                          @ModelAttribute("room") RoomEntity room){
        try {
            HotelEntity hotel = hotelRepository.findById(hotelId)
                    .orElseThrow(HotelNotFoundException::new);

            if(room.getId()==null){
                room.setHotel(hotel);
                roomRepository.save(room);
                hotel.getRooms().add(room);
                hotelRepository.save(hotel);
            }

            model.addAttribute("hotel",hotel);
        }catch (HotelNotFoundException e){
            model.addAttribute("message","Hotel not found!");
        }
        return "/roomList.jsp";
    }

    @GetMapping("/hotel/rooms/remove")
    public String removeRoom(@RequestParam("roomId") int roomId,
                              @RequestParam("hotelId") int hotelId,
                              Model model) {

        model.addAttribute("roomId", roomId);
        model.addAttribute("hotelId",hotelId);
        roomRepository.deleteById(roomId);
        return "/hotel/rooms?hotelId="+hotelId;
    }
}
