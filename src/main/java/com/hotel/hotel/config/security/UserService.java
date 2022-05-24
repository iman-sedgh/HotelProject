package com.hotel.hotel.config.security;

import com.hotel.hotel.exception.EmailAlreadyExistException;
import com.hotel.hotel.exception.UsernameAlreadyExistException;
import com.hotel.hotel.dto.UserDto;
import com.hotel.hotel.model.UserEntity;
import com.hotel.hotel.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service
@Transactional
public class UserService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    BCryptPasswordEncoder passwordEncoder;


    public void register(UserDto user) throws EmailAlreadyExistException, UsernameAlreadyExistException {

        if(checkIfUserExistByEmail(user.getEmail())){
            throw new EmailAlreadyExistException("email is already taken!");
        }
        if(checkIfUserExistByUsername(user.getUsername())){
            throw new UsernameAlreadyExistException("Username is already taken!");
        }
        UserEntity userEntity = new UserEntity();
        userEntity.setFirstName(user.getFirstName());
        userEntity.setLastName(user.getLastName());
        userEntity.setUsername(user.getUsername());
        userEntity.setEmail(user.getEmail());
//        BeanUtils.copyProperties(user, userEntity);
        encodePassword(userEntity, user);
//        userEntity.setRoles(Set.of("ROLE_USER"));
        userRepository.save(userEntity);
    }


    public boolean checkIfUserExistByEmail(String email) {
        return userRepository.findByEmail(email).isPresent();
    }

    public boolean checkIfUserExistByUsername(String username) {
        return userRepository.findByUsername(username).isPresent();
    }
    private void encodePassword( UserEntity userEntity, UserDto user){
        userEntity.setPassword(passwordEncoder.encode(user.getPassword()));
    }
}
