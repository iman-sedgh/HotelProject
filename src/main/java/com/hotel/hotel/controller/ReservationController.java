package com.hotel.hotel.controller;


import com.github.mfathi91.time.PersianDate;
import com.hotel.hotel.model.HotelEntity;
import com.hotel.hotel.model.ReservationEntity;
import com.hotel.hotel.model.RoomEntity;
import com.hotel.hotel.repository.HotelRepository;
import com.hotel.hotel.repository.ReservationRepository;
import com.hotel.hotel.repository.RoomRepository;
import org.bardframework.time.format.DateTimeFormatterBuilderJalali;
import org.bardframework.time.format.DateTimeFormatterJalali;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.sql.Date;
import java.text.DateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.*;
import java.util.List;
import java.util.stream.Collectors;

@Controller
public class ReservationController {

    @Autowired
    public HotelRepository hotelRepository;
    @Autowired
    public ReservationRepository reservationRepository;
    @Autowired
    public RoomRepository roomRepository;

    @RequestMapping("/hotel/reserving/setTime")
    public String getFreeRooms(@RequestParam("id") int id, Model model,
                               @RequestParam("start") String start,
                               @RequestParam("end") String end){
        PersianDate persianDateStart = PersianDate.parse(start, DateTimeFormatter.ofPattern("yyyy/MM/dd"));
        PersianDate persianDateEnd = PersianDate.parse(end, DateTimeFormatter.ofPattern("yyyy/MM/dd"));

        Date startDate = Date.valueOf(persianDateStart.toGregorian());
        Date endDate = Date.valueOf(persianDateEnd.toGregorian());

        HotelEntity hotel = hotelRepository.getById(id);
        model.addAttribute("hotel",hotel);

        Set<RoomEntity> rooms = new HashSet<>();

        hotel.getRooms().forEach(room->{
            if (room.getReserved_dates().isEmpty())
                rooms.add(room);
            else
                room.getReserved_dates().forEach(map->{
                    if (map.get("start").after(endDate) || map.get("end").before(startDate)){
                        rooms.add(room);
                    }
                });
        });

        model.addAttribute("rooms",rooms);
        model.addAttribute("isDateForm",false);
        model.addAttribute("start",startDate);
        model.addAttribute("end",endDate);
        return "/singlehotel.jsp";
    }

    @RequestMapping("/hotel/reserving/submit")
    public String submitReservation(@ModelAttribute("checkIn") String checkIn,
                                    @ModelAttribute("checkOut") String checkOut,
                                    @ModelAttribute("id") String id,
                                    @ModelAttribute("costumerName") String costumerName,
                                    @ModelAttribute("costumerNationalID") String costumerNationalID,
                                    @ModelAttribute("roomsID") ArrayList<String> roomsID){

        Date checkInDate = Date.valueOf(checkIn);
        Date checkOutDate = Date.valueOf(checkOut);
        Integer hotelID = Integer.parseInt(id);

        List<RoomEntity> rooms =
                roomsID.stream().map(room -> roomRepository.getById(Integer.parseInt(room))).toList();


        int price = rooms.stream()
                        .map(RoomEntity::getPrice)
                        .toList().stream().mapToInt(Integer::intValue).sum();

        HotelEntity hotel = hotelRepository.getById(hotelID);
        ReservationEntity reservationEntity = new ReservationEntity(hotel,costumerName,costumerNationalID,
                                                                    checkInDate,checkOutDate,price);

        for (RoomEntity room:rooms) {
            reservationEntity.addRoom(room);
        }

        reservationRepository.save(reservationEntity);

        return "/hotel?hotelId="+hotelID;
    }



}
