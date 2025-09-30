package com.codeloop.user.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.codeloop.user.model.User;

public interface UserRepository extends JpaRepository<User, Integer> {
}
