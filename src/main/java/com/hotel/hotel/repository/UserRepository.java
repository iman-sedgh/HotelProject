package com.hotel.hotel.repository;

import com.hotel.hotel.model.IdentityEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UserRepository extends JpaRepository<IdentityEntity, Integer> {
    Optional<IdentityEntity> findByEmail(String email);

    Optional<IdentityEntity> findByUsername(String username);
    IdentityEntity findFirstByOrderByIdDesc();
}
