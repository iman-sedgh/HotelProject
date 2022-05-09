package com.hotel.hotel.repository;

import com.hotel.hotel.model.HotelEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Collection;

public interface HotelRepository extends JpaRepository<HotelEntity,Integer> {
    Collection<HotelEntity> findAllByCity(String city);
}
