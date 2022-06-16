package com.hotel.hotel.controller;

import com.hotel.hotel.exception.HotelNotFoundException;
import com.hotel.hotel.model.HotelEntity;
import com.hotel.hotel.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.math.BigInteger;
import java.util.List;

@Controller
public class AccountingController {





    @Autowired
    HotelRepository hotelRepository;

    @GetMapping("/hotel/accounting")
    public String Accounting(@RequestParam("hotelId") int hotelId, Model model){

        model.addAttribute("hotelId",hotelId);
        try {
            int totalReserve = hotelRepository.calcProfit(hotelId);
            int totalSalary = hotelRepository.calcTotalSalary(hotelId);
            int profit = totalReserve- totalSalary;
            model.addAttribute("total_salary",totalSalary);
            model.addAttribute("total_profit",totalReserve);
            model.addAttribute("profit",profit);
        } catch (Exception e) {
            model.addAttribute("message","something went Wrong!");
        }
        return "/accounting.jsp";
    }


}

