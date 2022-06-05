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


    @GetMapping("/hotel/staffs")
    public String staffList(@RequestParam("hotelId") int hotelId, Model model) {

        try {
            model.addAttribute("hotel", hotelRepository.findById(hotelId).orElseThrow(HotelNotFoundException::new));
        } catch (HotelNotFoundException e) {
            model.addAttribute("message", "Hotel not found!");
        }
        return "/staffList.jsp";
    }

    @GetMapping("/hotel/staffs/add")
    public String addStaffForm(@RequestParam("hotelId") int hotelId, Model model) {

        model.addAttribute("hotelId", hotelId);
        return "/addStaffForm.jsp";
    }

    @PostMapping("/hotel/staffs/add")
    public String addStaff(Model model,
                           @ModelAttribute("staff") StaffEntity staff,
                           @RequestParam("hotelId") int hotelId,
                           @ModelAttribute("positionName") String positionName) {

        try {
            HotelEntity hotel = hotelRepository.findById(hotelId)
                    .orElseThrow(HotelNotFoundException::new);
            StaffPositionEntity staffPosition = staffPositionRepository.findByPositionName(positionName)
                    .or(() -> {
                        StaffPositionEntity newStaffPosition = new StaffPositionEntity(positionName);
                        staffPositionRepository.save(newStaffPosition);
                        hotel.getStaffPositions().add(newStaffPosition);
                        hotelRepository.save(hotel);
                        return java.util.Optional.of(newStaffPosition);


                    }).orElseThrow(StaffNotFoundException::new);


            if (staff.getId() == null) {
                staff.setHotel(hotel);
                staff.setStaffPosition(staffPosition);
                staffRepository.save(staff);
                hotel.getStaffs().add(staff);
                hotelRepository.save(hotel);
            }


            model.addAttribute("hotel", hotel);

        } catch (HotelNotFoundException e) {
            model.addAttribute("message", "Hotel not found!");
        } catch (StaffNotFoundException e) {
            model.addAttribute("message", "Staff Position not found!");
        }
        return "/staffList.jsp";
    }


    //    @GetMapping("/hotel/staffs/remove")
//    public String removeStaff(Model model,
//                             @RequestParam("hotelId") int hotelId,
//                             @RequestParam("staffId") int staffId){
//        staffRepository.deleteById(staffId);
//        return "/hotel/staffs?hotelId=${hotel.id}";
//    }
    @GetMapping("/hotel/staffs/remove")
    public String removeStaff(@RequestParam("staffId") int staffId,
                              @RequestParam("hotelId") int hotelId,
                              Model model) {

        model.addAttribute("staffId", staffId);
        model.addAttribute("hotelId",hotelId);
        staffRepository.deleteById(staffId);
        return "/hotel/staffs?hotelId="+hotelId;
    }
}



