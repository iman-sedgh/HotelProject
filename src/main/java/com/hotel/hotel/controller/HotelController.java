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
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class HotelController {

    @Autowired
    private RoomRepository roomRepository;
    @Autowired
    StaffPositionRepository staffPositionRepository;
    @Autowired
    HotelRepository hotelRepository;

    @GetMapping("/hotel")
    public String hotelInfo(Model model, @RequestParam("hotelId") int hotelId){
        try {
            HotelEntity hotelInfo = hotelRepository.findById(hotelId)
                    .orElseThrow(HotelNotFoundException::new);
            hotelInfo.getRooms().forEach(room -> System.out.println(room.getType()));
            model.addAttribute("hotel",hotelInfo);
            return "hotelInformation.jsp";
        }catch (HotelNotFoundException e){
            model.addAttribute("message","Hotel not found!");
            return "hotelInformation.jsp";
        }
    }

    //room section
    @GetMapping("/hotel/rooms/add")
    public String addRoomForm(@RequestParam("hotelId") int hotelId, Model model){
        model.addAttribute("hotelId",hotelId);
        return "/addRoomForm.jsp";
    }

    @PostMapping("/hotel/rooms/add")
    public String addRoom(Model model,
                          @RequestParam("hotelId") int hotelId,
                          @ModelAttribute("type") String type,
                          @ModelAttribute("roomNumber") int roomNumber){
        try {
            HotelEntity hotel = hotelRepository.findById(hotelId)
                    .orElseThrow(HotelNotFoundException::new);
            RoomEntity room = new RoomEntity(type,roomNumber,hotel);

            room.setHotel(hotel);
            roomRepository.save(room);

            model.addAttribute("hotel",room);
        }catch (HotelNotFoundException e){
            model.addAttribute("message","Hotel not found!");
        }
        return "/hotelInformation.jsp";
    }

    @GetMapping("/hotel/rooms/remove")
    public String removeRoom(Model model,
                             @RequestParam("hotelId") int hotelId,
                             @RequestParam("roomId") int roomId){
//        hotelService.removeRoom(roomId);
        return "/hotel?hotelId="+hotelId;
    }


    //staff section

    @GetMapping("/hotel/staffs/staffinfo")
    public String staffInfo(Model model , @RequestParam("hotelId") int hotelId) {
        model.addAttribute("hotelId", hotelId);
        return "/addRoomForm.jsp";
    }

    @GetMapping("/hotel/staffs/add")
    public String addStaffForm(@RequestParam("hotelId") int hotelId, Model model){
        model.addAttribute("hotelId",hotelId);
        return "/addStaffForm.jsp";
    }

    @PostMapping("/hotel/staffs/add")
    public String addStaff(Model model,
                          @RequestParam("hotelId") int hotelId,
                          @ModelAttribute("positionName") String positionName){
        try {
            StaffPositionEntity staff = new StaffPositionEntity(positionName);
            HotelEntity hotel = hotelRepository.findById(hotelId)
                    .orElseThrow(HotelNotFoundException::new);

            staff.setHotel(hotel);
            staffPositionRepository.save(staff);
            model.addAttribute("hotel",hotel);
        }catch (HotelNotFoundException e){
            model.addAttribute("message","Hotel not found!");
        }
        return "/hotelInformation.jsp";
    }

    @GetMapping("/hotel/staffs/remove")
    public String removeStaff(Model model,
                             @RequestParam("hotelId") int hotelId,
                             @RequestParam("staffId") int staffId){
        staffPositionRepository.deleteById(staffId);
        return "/hotel?hotelId="+hotelId;
    }

    //hotel section

    @GetMapping("/hotels")
    public String allHotels(Model model){
        List<HotelDto> hotels = hotelRepository.findAll().stream().map(hotelEntity -> {
            return HotelDto.builder()
                    .id(hotelEntity.getId())
                    .name(hotelEntity.getName())
                    .city(hotelEntity.getCity())
                    .address(hotelEntity.getAddress())
                    .build();
        }).toList();
        model.addAttribute("hotels",hotels);
        return "/hotels.jsp";
    }

    @GetMapping("/hotels/city")
    public String allHotelsByCity(Model model,@RequestParam("city") String city){
        List<HotelDto> hotels = hotelRepository.findAllByCity(city).stream().map(hotelEntity -> {
            return HotelDto.builder()
                    .id(hotelEntity.getId())
                    .name(hotelEntity.getName())
                    .city(hotelEntity.getCity())
                    .address(hotelEntity.getAddress())
                    .build();
        }).toList();
        model.addAttribute("hotels",hotels);
        return "/hotels.jsp";
    }

    @GetMapping("/hotels/add")
    public String createHotelForm(Model model){
        HotelEntity hotel = new HotelEntity();
        model.addAttribute("hotel", hotel);
        return "/createHotelForm.jsp";
    }

    @PostMapping("/hotels/add")
    public String createHotel(@ModelAttribute("hotel") HotelEntity hotel,Model model){
        hotelRepository.save(hotel);
        model.addAttribute("hotel",hotel);
        return "/hotelInformation.jsp";
    }
}
