package com.hotel.hotel.repository;

import com.hotel.hotel.model.StaffEntity;
import com.hotel.hotel.model.IdentityEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface StaffRepository extends JpaRepository<StaffEntity, Integer> {
    StaffEntity findFirstByOrderByIdDesc();

}
