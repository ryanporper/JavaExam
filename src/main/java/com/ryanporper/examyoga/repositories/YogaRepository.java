package com.ryanporper.examyoga.repositories;

import java.util.List;


import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ryanporper.examyoga.models.Yoga;

@Repository
public interface YogaRepository extends CrudRepository<Yoga, Long> {
	List<Yoga> findAll();
	List<Yoga> findByUserIdIs(Long userId);
}
