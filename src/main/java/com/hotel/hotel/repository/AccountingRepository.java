package com.hotel.hotel.repository;

import com.hotel.hotel.model.AccountingEntity;
import com.hotel.hotel.model.StaffEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AccountingRepository extends JpaRepository<AccountingEntity, Integer> {
}
