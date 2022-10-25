package com.ryanporper.examyoga.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.ryanporper.examyoga.models.User;
import com.ryanporper.examyoga.models.Yoga;
import com.ryanporper.examyoga.repositories.YogaRepository;

@Service
public class YogaService {
private final YogaRepository yogaRepo;
	
	public YogaService(YogaRepository yogaRepo) {
		this.yogaRepo = yogaRepo;
	}
	
	public List<Yoga> allYogas(){
		return yogaRepo.findAll();
	}
		
	public List<Yoga> myYogas(User user){
		return yogaRepo.findByUserIdIs(user.getId());
	}
	
	public Yoga addYoga(Yoga yoga) {
		return yogaRepo.save(yoga);
	}
	
	public Yoga updateYoga(Yoga yoga) {
		return yogaRepo.save(yoga);
	}
	
	public void deleteYoga(Yoga yoga) {
		yogaRepo.delete(yoga);
	}
	
	public Yoga findYoga(Long id) {
		Optional<Yoga> optionalYoga = yogaRepo.findById(id);
		if(optionalYoga.isPresent()) {
			return optionalYoga.get();
		}else {
			return null;
		}
	}
}