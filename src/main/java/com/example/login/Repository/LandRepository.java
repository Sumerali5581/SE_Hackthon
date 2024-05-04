package com.example.login.Repository;

import com.example.login.Model.Land;
import com.example.login.Model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LandRepository extends JpaRepository<Land, Long> {
}
