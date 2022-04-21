package com.hotel.hotel.controller;
import com.hotel.hotel.model.user.UserEntity;
import com.hotel.hotel.model.user.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.security.Principal;

@Controller
public class GreetingController {

    @Autowired
    UserRepository userRepository;

    @GetMapping("/greeting")
    public String greeting(Principal principal, Model model) {
        UserEntity userEntity = null;
        try {
            userEntity = userRepository.findByUsername(principal.getName())
                    .orElseThrow(Exception::new);

            model.addAttribute("user", userEntity);
            return "greeting.jsp";

        } catch (Exception e) {
            return "greeting.jsp";
        }
    }

}