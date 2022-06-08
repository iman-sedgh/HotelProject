package com.hotel.hotel.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name= "Accounting")
public class AccountingEntity {

    @Id
    @Getter
    @Setter
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Integer id;

    @Getter @Setter
    private long salary;


    @Getter @Setter
    private long reserve_money;





    @OneToOne
    @JoinColumn(name = "Accounting_id")
    @Getter @Setter
    private HotelEntity hotel;


    public AccountingEntity(Integer id, long salary, long reserve_money,
                            HotelEntity hotel) {
        this.id = id;
        this.salary = salary;
        this.reserve_money = reserve_money;
        this.hotel = hotel;
    }

    public AccountingEntity() {}
}


