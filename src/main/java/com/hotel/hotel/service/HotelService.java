package com.hotel.hotel.service;

import com.hotel.hotel.dto.HotelDto;
import com.hotel.hotel.exception.HotelNotFoundException;
import com.hotel.hotel.exception.StaffNotFoundException;
import com.hotel.hotel.model.HotelEntity;
import com.hotel.hotel.model.RoomEntity;
import com.hotel.hotel.model.StaffEntity;
import com.hotel.hotel.model.StaffPositionEntity;
import com.hotel.hotel.payload.CreateHotelRequest;
import com.hotel.hotel.repository.HotelRepository;
import com.hotel.hotel.repository.RoomRepository;
import com.hotel.hotel.repository.StaffPositionRepository;
import com.hotel.hotel.repository.StaffRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HotelService {

    @Autowired
    HotelRepository hotelRepository;

    @Autowired
    RoomRepository roomRepository;

    @Autowired
    StaffPositionRepository staffPositionRepository;

    @Autowired
    StaffRepository staffRepository;

    public HotelEntity getHotelInfoById(int id) throws HotelNotFoundException {
        return hotelRepository.findById(id)
                .orElseThrow(HotelNotFoundException::new);
    }

    public List<HotelDto> getAllHotels(){
        return hotelRepository.findAll().stream().map(hotelEntity -> {
            return HotelDto.builder()
                    .id(hotelEntity.getId())
                    .name(hotelEntity.getName())
                    .city(hotelEntity.getCity())
                    .address(hotelEntity.getAddress())
                    .build();
        }).toList();
    }
    public List<HotelDto> getHotelsByCity(String city){
        return hotelRepository.findAllByCity(city).stream().map(hotelEntity -> {
            return HotelDto.builder()
                    .id(hotelEntity.getId())
                    .name(hotelEntity.getName())
                    .city(hotelEntity.getCity())
                    .address(hotelEntity.getAddress())
                    .build();
        }).toList();
    }

    public HotelEntity createHotel(CreateHotelRequest hotel){
        return hotelRepository.save(
                HotelEntity.builder()
                        .name(hotel.getName())
                        .description(hotel.getDescription())
                        .city(hotel.getCity())
                        .address(hotel.getAddress())
                        .roomNumber(hotel.getRoomNumber())
                        .floorNumber(hotel.getFloorNumber())
                        .summary(hotel.getSummary())
                        .build()
        );
    }

    public HotelEntity addRoom(int id, String roomType) throws HotelNotFoundException {
        RoomEntity room = new RoomEntity(roomType);
        HotelEntity hotel = hotelRepository.findById(id)
                .orElseThrow(HotelNotFoundException::new);

        room.setHotel(hotel);
        roomRepository.save(room);

        hotel.addRoom(room);
        hotelRepository.save(hotel);
        return hotel;
    }
    public void removeRoom(int roomId) {
        roomRepository.deleteById(roomId);
    }

    //staff section

    public StaffPositionEntity addStaff(int id, String nationalCode) throws StaffNotFoundException {
        StaffEntity staff = new StaffEntity(nationalCode);
        StaffPositionEntity staffPosition = staffPositionRepository.findById(id)
                .orElseThrow(StaffNotFoundException::new);

        staff.setStaffPosition(staffPosition);


            return staffPosition;
    }

    public HotelEntity addStaffPosition(int id, String positionName) throws HotelNotFoundException {
        StaffPositionEntity staff = new StaffPositionEntity(positionName);
        HotelEntity hotel = hotelRepository.findById(id)
                .orElseThrow(HotelNotFoundException::new);

        staff.setHotel(hotel);
        staffPositionRepository.save(staff);

        hotel.addStaff(staff);
        hotelRepository.save(hotel);
        return hotel;
    }
    public void removeStaffPosition(int staffPositionId){
        staffPositionRepository.deleteById(staffPositionId);
    }
}
