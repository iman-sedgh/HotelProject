package com.hotel.hotel.controller;

import com.hotel.hotel.dto.HotelDto;
import com.hotel.hotel.exception.HotelNotFoundException;
import com.hotel.hotel.model.HotelEntity;
import com.hotel.hotel.repository.HotelRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

@Controller
public class HotelController {
    @Autowired
    HotelRepository hotelRepository;

    @Value("${hotel.files.path}")
    private String filesPath;



    @GetMapping("/")
    public String index(Model model){
        try{
            Page<HotelEntity> recentHotels = hotelRepository.findAll(
                    PageRequest.of(0,3, Sort.by(Sort.Direction.DESC, "id"))
            );
            model.addAttribute("recentHotels",recentHotels.iterator());
        }
        catch (Exception ignored){}
        return "index.jsp";
    }


    @GetMapping("/hotel")
    public String hotelInfo(Model model, @RequestParam("hotelId") int hotelId){
        try {
            HotelEntity hotelInfo = hotelRepository.findById(hotelId)
                    .orElseThrow(HotelNotFoundException::new);
            model.addAttribute("hotel",hotelInfo);
            return "hotelInformation.jsp";
        }catch (HotelNotFoundException e){
            model.addAttribute("message","Hotel not found!");
            return "hotelInformation.jsp";
        }
    }
    @GetMapping("/hotels")
    public String allHotels(Model model){
        List<HotelDto> hotels = hotelRepository.findAll().stream().map(hotelEntity -> HotelDto.builder()
                .id(hotelEntity.getId())
                .name(hotelEntity.getName())
                .city(hotelEntity.getCity())
                .address(hotelEntity.getAddress())
                .build()).toList();
        model.addAttribute("hotels",hotels);
        return "/hotels.jsp";
    }
    @GetMapping("/hotels/city")
    public String allHotelsByCity(Model model,@RequestParam("city") String city){
        List<HotelDto> hotels = hotelRepository.findAllByCity(city).stream().map(hotelEntity -> HotelDto.builder()
                .id(hotelEntity.getId())
                .name(hotelEntity.getName())
                .city(hotelEntity.getCity())
                .address(hotelEntity.getAddress())
                .build()).toList();
        model.addAttribute("hotels",hotels);
        return "/hotels.jsp";
    }
    @GetMapping("/hotels/add")
    public String createHotelForm(Model model,Principal principal){
        model.addAttribute("username",principal.getName());
        return "/createHotelForm.jsp";
    }
    @PostMapping("/hotels/add")
    public String createHotel(@ModelAttribute("hotel") HotelEntity hotel, Principal principal,
                              @RequestParam("files") ArrayList<MultipartFile> files, Model model){
        hotel.setOwner(principal.getName());
        hotelRepository.save(hotel);

        ArrayList<String> images = new ArrayList<>();
        AtomicInteger count = new AtomicInteger();
        files.forEach((file) -> {
            try {
                String path = "files/"+hotel.getId()+ count.get() +file.getOriginalFilename();
                Files.write(Path.of(filesPath+path),file.getBytes());
                images.add(path);
                count.getAndIncrement();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        });
        hotel.setImages(images);
        hotelRepository.save(hotel);
        model.addAttribute("hotel",hotel);
        return "/hotelInformation.jsp";
    }

}
