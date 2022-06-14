package com.hotel.hotel.controller;


import com.hotel.hotel.model.HotelEntity;
import com.hotel.hotel.model.ReservationEntity;
import com.hotel.hotel.model.RoomEntity;
import com.hotel.hotel.repository.HotelRepository;
import com.hotel.hotel.repository.ReservationRepository;
import com.hotel.hotel.repository.RoomRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class ReservationController {

    @Autowired
    public HotelRepository hotelRepository;
    @Autowired
    public ReservationRepository reservationRepository;
    @Autowired
    public RoomRepository roomRepository;

    @PostMapping("/hotel/reserving/setTime")
    public String getFreeRooms(@PathVariable("id") int id, Model model,
                               @ModelAttribute("start")Date start,
                               @ModelAttribute("end")Date end){
        HotelEntity hotel = hotelRepository.getById(id);
        model.addAttribute("hotel",hotel);

        ArrayList<RoomEntity> rooms = new ArrayList<>();
        hotel.getRooms().forEach(room->{

        });
        model.addAttribute("rooms",rooms);
        return "/singlehotel.jsp";
    }

    @PostMapping("/hotel/reserving/submit")
    public String submitReservation(@RequestBody Date checkInDate,
                                    @RequestBody Date checkOutDate,
                                    @RequestBody Integer hotelID,
                                    @RequestBody String costumerName,
                                    @RequestBody String costumerNationalID,
                                    @RequestBody Integer totalPrice,
                                    @RequestBody List<Integer> reservedRoomsID,
                                    Model model){

        HotelEntity hotel = hotelRepository.getById(hotelID);
        ReservationEntity reservationEntity = new ReservationEntity(hotel,costumerName,costumerNationalID,
                                                                    checkInDate,checkOutDate,totalPrice);


        for (Integer roomID:reservedRoomsID
             ) {
            RoomEntity tmp_room = roomRepository.getById(roomID);
            reservationEntity.addRoom(tmp_room);

        }
        reservationRepository.save(reservationEntity);

        return "";
    }



}
