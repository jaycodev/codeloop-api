package com.course.platform.user.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.course.platform.user.model.User;

public interface UserRepository extends JpaRepository<User, Integer> {
}
