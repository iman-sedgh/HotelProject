package com.hotel.hotel.model.user;

import com.hotel.hotel.validation.PasswordMatches;
import lombok.Getter;
import lombok.Setter;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@PasswordMatches
public class UserDto {
//    @Getter @Setter @Size(max = 50, message = "FirstName can't be higher than 20 characters!")
//    @NotEmpty(message = "First name can not be empty!")
//    private String firstName;
//
//    @Getter @Setter @Size(max = 50, message = "LastName can't be higher than 20 characters!")
//    private String lastName;
//
//    @Getter @Setter @Size(max = 50, message = "Username can't be higher than 20 characters!")
//    @NotEmpty(message = "Username can not be empty!")
//    private String username;
//
//    @Getter @Setter @Size(max = 50, message = "Email can't be higher than 50 characters!")
//    @Email(message = "Please provide a valid email id!")
//    private String email;
//
//    @Getter @Setter
//    @NotEmpty(message = "Password can not be empty!")
//    private String password;

    @Getter @Setter
    @NotNull @NotEmpty
    private String firstName;

    @Getter @Setter
    @NotNull @NotEmpty
    private String lastName;

    @Getter @Setter
    @NotNull @NotEmpty
    private String password;

    @Getter @Setter
    @NotNull @NotEmpty
    private String matchingPassword;

    @Getter @Setter
    @NotNull @NotEmpty @Email
    private String email;

    @Getter @Setter
    @NotNull @NotEmpty
    private String username;
}
