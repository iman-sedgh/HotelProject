package com.hotel.hotel.model;

import com.hotel.hotel.model.user.UserEntity;
import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

@Entity
public class ReservationEntity
{

    @Id @Getter @Setter
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private int id;


    @ManyToOne
    @Getter @Setter
    private UserEntity user;

    @DateTimeFormat(pattern="yyyy/MM/dd")
    @Getter @Setter
    private Date checkInDT;

    @DateTimeFormat(pattern="yyyy/MM/dd")
    @Getter @Setter
    private Date checkOutDT;

    @Getter @Setter
    private int price;

    @Getter @Setter
    private String status;

}
