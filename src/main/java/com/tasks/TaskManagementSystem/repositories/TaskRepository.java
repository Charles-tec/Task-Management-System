package com.tasks.TaskManagementSystem.repositories;

import com.tasks.TaskManagementSystem.models.Tasks;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TaskRepository extends JpaRepository<Tasks, Integer> {

}
