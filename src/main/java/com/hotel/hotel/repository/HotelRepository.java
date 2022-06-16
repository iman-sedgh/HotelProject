package com.hotel.hotel.repository;

import com.hotel.hotel.model.HotelEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.math.BigInteger;
import java.util.Collection;
import java.util.List;

public interface HotelRepository extends JpaRepository<HotelEntity,Integer> {
    Collection<HotelEntity> findAllByCity(String city);
    Collection<HotelEntity> findAllByOwner(String username);
    HotelEntity findFirstByOrderByIdDesc();
    @Query(value = "SELECT SUM(r.price)  FROM ReservationEntity r " +
                    "WHERE r.hotel.id= :hotelID")
    Integer calcProfit(@Param("hotelID") Integer hotelID);

    @Query(value = "SELECT SUM(s.salary) FROM StaffEntity s " +
                    "WHERE s.hotel.id= :hotelID ")
    Integer calcTotalSalary(@Param("hotelID") Integer hotelID);
}
