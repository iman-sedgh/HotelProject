package com.hotel.hotel.repository;

import com.hotel.hotel.model.StaffEntity;
import com.hotel.hotel.model.IdentityEntity;
import org.springframework.data.jpa.repository.JpaRepository;


public interface StaffRepository extends JpaRepository<IdentityEntity, Integer> {
    StaffEntity findFirstByOrderByIdDesc();
}
