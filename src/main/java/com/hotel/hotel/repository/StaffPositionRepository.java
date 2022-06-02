package com.hotel.hotel.repository;

import com.hotel.hotel.model.StaffPositionEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface StaffPositionRepository extends JpaRepository<StaffPositionEntity,Integer> {
    StaffPositionEntity findFirstByOrderByIdDesc();
    Optional<StaffPositionEntity> findByPositionName(String positionName);
}
