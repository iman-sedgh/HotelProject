package com.hotel.hotel.repository;

import com.hotel.hotel.model.StaffPositionEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface StaffPositionRepository extends JpaRepository<StaffPositionEntity,Integer> {
}
