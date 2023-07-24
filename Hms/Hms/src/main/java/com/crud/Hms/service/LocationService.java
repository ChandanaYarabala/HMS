package com.crud.Hms.service;

import com.crud.Hms.entity.Location;
import com.crud.Hms.repository.LocationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LocationService {
    @Autowired
    private LocationRepository locationRepository;

    public Location insert(Location location){
        return locationRepository.save(location);
    }

}
