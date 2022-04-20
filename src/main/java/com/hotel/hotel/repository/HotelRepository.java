package com.hotel.hotel.repository;

import com.hotel.hotel.model.HotelModel;
import org.springframework.data.jpa.repository.JpaRepository;

public interface HotelRepository extends JpaRepository<HotelModel,Integer> {
}
