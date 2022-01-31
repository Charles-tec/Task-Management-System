package com.tasks.TaskManagementSystem.services;

import com.tasks.TaskManagementSystem.models.Tasks;
import com.tasks.TaskManagementSystem.repositories.TaskRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class TaskService {

    @Autowired private TaskRepository taskRepository;
    public List<Tasks> listAll(){

        return (List<Tasks>) taskRepository.findAll();
    }
    public void save(Tasks tasks){

        taskRepository.save(tasks);
    }
    public Tasks get(Integer id){
        Optional<Tasks> result=taskRepository.findById(id);
        return result.get();
    }
    public void delete(Integer id){
        taskRepository.deleteById(id);
    }


}
