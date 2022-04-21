package com.hotel.hotel.controller;

import com.hotel.hotel.exception.EmailAlreadyExistException;
import com.hotel.hotel.exception.UsernameAlreadyExistException;
import com.hotel.hotel.model.user.UserDto;
import com.hotel.hotel.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;

@Controller
public class
AuthController {
    @Autowired
    private UserService userService;

//    @Autowired
//    private ModelAndView mav;

    @GetMapping("/register")
    public String showRegistrationForm(Model model) {
        UserDto userDto = new UserDto();
//        model.addAttribute("user", userDto);
        return "register.jsp";
    }

    @PostMapping("/register")
    public String registerUserAccount(@ModelAttribute("user") @Valid UserDto userDto) {
        try {
            userService.register(userDto);
            return "login.jsp";
        } catch (EmailAlreadyExistException | UsernameAlreadyExistException uaeEx) {
//            mav.addObject("message", "An account for that username/email already exists.");
            return "register.jsp";
        }
    }


}
