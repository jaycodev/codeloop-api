package com.course.platform.user.dto;

import com.course.platform.user.model.UserRole;

import lombok.Data;

@Data
public class UserDTO {
    private String name;
    private String email;
    private String password_hash;
    private UserRole role;
}
