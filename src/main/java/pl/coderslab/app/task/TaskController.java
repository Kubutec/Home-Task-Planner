package pl.coderslab.app.task;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.app.user.User;

import java.util.List;

@Controller
@RequestMapping("/tasks")

public class TaskController {
    @Autowired
    public TaskService taskService;

    @GetMapping("/add")
    public String add(Model model){
        model.addAttribute("task", new Task());
        return "taskAdd";
    }
    @PostMapping("/add")
    public String addUser(@ModelAttribute Task task, BindingResult result){
        if (result.hasErrors()){
            return "taskAdd";
        }taskService.saveTask(task);
        return "redirect:list";

    }
    @GetMapping("/list")
    public String list(Model model) {
        List<Task> tasks = taskService.findAll();
        model.addAttribute("tasks", tasks);
        return "taskList";

    }
    @GetMapping("/update/{id}")
    public String update(@PathVariable Long id, Model model) {
        Task task = taskService.read(id);
        model.addAttribute("task",task);
        return "taskAdd";
    }
    @PostMapping("/update/{id}")
    public String update(@ModelAttribute Task task, BindingResult result) {
        if (result.hasErrors()) {
            return "taskAdd";
        }
        taskService.update(task);
        return "redirect:../list";
    }



}
