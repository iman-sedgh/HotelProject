package com.hotel.hotel.exception;

public class RoomNotFoundException extends  Exception{
    public RoomNotFoundException(){
        super();
    }
    public RoomNotFoundException(String message){
        super(message);
    }
}
