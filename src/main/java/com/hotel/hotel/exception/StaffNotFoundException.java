package com.hotel.hotel.exception;

public class StaffNotFoundException extends Exception{
    public StaffNotFoundException(){
        super();
    }
    public StaffNotFoundException(String message){
        super(message);
    }
}
