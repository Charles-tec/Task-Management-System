package com.tasks.TaskManagementSystem.controllers;

import com.tasks.TaskManagementSystem.models.Tasks;
import com.tasks.TaskManagementSystem.services.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;


@Controller
public class TaskController {
    @Autowired private TaskService service;

    @GetMapping("/tasks")
    public String getTasks(Model model){
        List<Tasks> tasksList=service.listAll();
        model.addAttribute("tasksList",tasksList);
        return "tasks";
    }
    @GetMapping("/tasks/new")
    public String newTask(Model model){
        model.addAttribute("tasks",new Tasks());
        model.addAttribute("pageHeader","TASK MANAGEMENT SYSTEM");
        model.addAttribute("pageTitle","Add new task!");
        return "task_form";
    }
    @PostMapping("/tasks/save")
    public String saveTask(Tasks tasks, RedirectAttributes ra){
        service.save(tasks);
        ra.addAttribute("message","task add successfully!");
        return "redirect:/tasks";
    }
    @GetMapping("/tasks/edit/{id}")
    public String showEditForm(@PathVariable("id") Integer id, Model model){
        Tasks tasks=service.get(id);
        model.addAttribute("tasks",tasks);
        model.addAttribute("pageTitle","Edit Task(ID:"+id+")");
        return "task_form";
    }
    @GetMapping("/tasks/delete/{id}")
    public String deleteVehicle(@PathVariable("id") Integer id){
        service.delete(id);
        return "redirect:/tasks";
    }



}
