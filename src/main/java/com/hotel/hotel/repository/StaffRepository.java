package com.hotel.hotel.repository;

import com.hotel.hotel.model.StaffEntity;
import com.hotel.hotel.model.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;


public interface StaffRepository extends JpaRepository<UserEntity, Integer> {
    StaffEntity findFirstByOrderByIdDesc();
}
