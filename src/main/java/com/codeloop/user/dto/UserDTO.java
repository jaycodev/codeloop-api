package com.codeloop.user.dto;

import com.codeloop.user.model.UserRole;

import lombok.Data;

@Data
public class UserDTO {
    private String name;
    private String email;
    private String password_hash;
    private UserRole role;
}
