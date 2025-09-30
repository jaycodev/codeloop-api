package com.course.platform.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.course.platform.user.dto.UserDTO;
import com.course.platform.user.dto.UserSummaryDto;
import com.course.platform.user.model.User;
import com.course.platform.user.repository.UserRepository;

import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public UserSummaryDto toSummaryDto(User user) {
        return UserSummaryDto.builder()
                .id(user.getUserId())
                .name(user.getName())
                .roleName(user.getRole().name())
                .build();
    }
    
    public List<User> list() {
        return userRepository.findAll();
    }

    public User search(Integer id) {
        return userRepository.findById(id)
                .orElseThrow(() -> new EntityNotFoundException("User not found with id: " + id));
    }

    public User create(UserDTO userDTO) {
        User user = new User();
        user.setName(userDTO.getName());
        user.setEmail(userDTO.getEmail());
        user.setPassword_hash(userDTO.getPassword_hash());
        user.setRole(userDTO.getRole());
        user.setStatus("ACTIVE"); // O el estado por defecto que desees
        return userRepository.save(user);
    }

    public User update(Integer id, UserDTO userDTO) {
        User existing = userRepository.findById(id)
                .orElseThrow(() -> new EntityNotFoundException("User not found with id: " + id));

        if (userDTO.getName() != null) existing.setName(userDTO.getName());
        if (userDTO.getEmail() != null) existing.setEmail(userDTO.getEmail());
        if (userDTO.getPassword_hash() != null) existing.setPassword_hash(userDTO.getPassword_hash());
        if (userDTO.getRole() != null) existing.setRole(userDTO.getRole());

        return userRepository.save(existing);
    }

    public void delete(Integer id) {
        if (!userRepository.existsById(id)) {
            throw new EntityNotFoundException("User not found with id: " + id);
        }
        userRepository.deleteById(id);
    }
}