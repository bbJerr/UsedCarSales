package com.portal.usedcarsalesportal.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.portal.usedcarsalesportal.model.Car;
import com.portal.usedcarsalesportal.model.CarBidding;
import com.portal.usedcarsalesportal.model.User;

@Repository
public interface BidRepository extends JpaRepository<CarBidding, Long>{
	
	List<CarBidding> findByUserAndCar(User user, Car car);
	
	List<CarBidding> findByUser(User user);

}
