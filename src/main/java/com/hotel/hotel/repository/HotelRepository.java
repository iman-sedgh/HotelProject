package com.hotel.hotel.repository;

import com.hotel.hotel.model.HotelEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.Collection;
import java.util.List;

public interface HotelRepository extends JpaRepository<HotelEntity,Integer> {
    Collection<HotelEntity> findAllByCity(String city);
    Collection<HotelEntity> findAllByOwner(String username);
    HotelEntity findFirstByOrderByIdDesc();
    @Query(value = "SELECT SUM(s.salary), SUM(r.price) FROM StaffEntity s, ReservationEntity r " +
            "where hotel_id= :hotelID" )
    List<Integer> calcProfit(@Param("hotelID") Integer hotelID);
}
