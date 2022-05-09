package com.hotel.hotel.controller;

import com.hotel.hotel.dto.HotelDto;
import com.hotel.hotel.exception.HotelNotFoundException;
import com.hotel.hotel.exception.RoomNotFoundException;
import com.hotel.hotel.model.HotelEntity;
import com.hotel.hotel.payload.CreateHotelRequest;
import com.hotel.hotel.service.HotelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class HotelController {

    @Autowired
    private HotelService hotelService;


    @GetMapping("/hotel")
    public String hotelInfo(Model model, @RequestParam("hotelId") int hotelId){
        try {
            HotelEntity hotelInfo = hotelService.getHotelInfoById(hotelId);
            hotelInfo.getRooms().forEach(room -> System.out.println(room.getType()));
            model.addAttribute("hotel",hotelInfo);
            return "hotelInformation.jsp";
        }catch (HotelNotFoundException e){
            model.addAttribute("message","Hotel not found!");
            return "hotelInformation.jsp";
        }
    }

    @GetMapping("/hotel/rooms/add")
    public String addRoomForm(@RequestParam("hotelId") int hotelId, Model model){
        model.addAttribute("hotelId",hotelId);
        return "/addRoomForm.jsp";
    }

    @PostMapping("/hotel/rooms/add")
    public String addRoom(Model model,
                          @RequestParam("hotelId") int hotelId,
                          @ModelAttribute("type") String type){
        try {
            model.addAttribute("hotel",hotelService.addRoom(hotelId,type));
        }catch (HotelNotFoundException e){
            model.addAttribute("message","Hotel not found!");
        }
        return "/hotelInformation.jsp";
    }

    @GetMapping("/hotel/rooms/remove")
    public String removeRoom(Model model,
                             @RequestParam("hotelId") int hotelId,
                             @RequestParam("roomId") int roomId){
        hotelService.removeRoom(roomId);
        return "/hotel?hotelId="+hotelId;
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
            model.addAttribute("hotel",hotelService.addStaffPosition(hotelId,positionName));
        }catch (HotelNotFoundException e){
            model.addAttribute("message","Hotel not found!");
        }
        return "/hotelInformation.jsp";
    }

    @GetMapping("/hotel/staffs/remove")
    public String removeStaff(Model model,
                             @RequestParam("hotelId") int hotelId,
                             @RequestParam("staffId") int staffId){
        hotelService.removeStaffPosition(staffId);
        return "/hotel?hotelId="+hotelId;
    }

    @GetMapping("/hotels")
    public String allHotels(Model model){
        List<HotelDto> hotels = hotelService.getAllHotels();
        model.addAttribute("hotels",hotels);
        return "/hotels.jsp";
    }

    @GetMapping("/hotels/city")
    public String allHotelsByCity(Model model,@RequestParam("city") String city){
        List<HotelDto> hotels = hotelService.getHotelsByCity(city);
        model.addAttribute("hotels",hotels);
        return "/hotels.jsp";
    }

    @GetMapping("/hotels/add")
    public String createHotelForm(Model model){
        CreateHotelRequest hotel = new CreateHotelRequest();
        model.addAttribute("hotel", hotel);
        return "/createHotelForm.jsp";
    }

    @PostMapping("/hotels/add")
    public String createHotel(@ModelAttribute("hotel") CreateHotelRequest hotel,Model model){
        HotelEntity newHotel = hotelService.createHotel(hotel);
        model.addAttribute("hotel",newHotel);
        return "/hotelInformation.jsp";
    }
}
