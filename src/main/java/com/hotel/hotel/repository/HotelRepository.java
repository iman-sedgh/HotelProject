package com.hotel.hotel.repository;

import com.hotel.hotel.model.HotelEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface HotelRepository extends JpaRepository<HotelEntity,Integer> {
}
