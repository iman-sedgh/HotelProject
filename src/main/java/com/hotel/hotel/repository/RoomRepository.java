package com.hotel.hotel.repository;

import com.hotel.hotel.model.RoomEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoomRepository extends JpaRepository<RoomEntity,Integer> {
}
