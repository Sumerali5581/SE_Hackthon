package com.example.login.Service;

import com.example.login.Model.Land;
import com.example.login.Model.User;
import com.example.login.Repository.LandRepository;
import com.example.login.Repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class LandService {

    @Autowired
    private LandRepository landRepository;



    public void updateDoctor(Long Id, String status) {
        if (Id != null) {
            Optional<Land> existing = landRepository.findById(Id);

            if (existing.isPresent()) {
                Land existingAppointment = existing.get();

                existingAppointment.setStatus(status);
                landRepository.save(existingAppointment);
            }
        }
    }
}
