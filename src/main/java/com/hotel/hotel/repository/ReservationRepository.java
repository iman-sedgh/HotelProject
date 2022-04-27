package com.hotel.hotel.repository;

import com.hotel.hotel.model.ReservationEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ReservationRepository extends JpaRepository<ReservationEntity,Integer> {
}
