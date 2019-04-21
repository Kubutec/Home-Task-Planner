package pl.coderslab.app.taskCategory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import pl.coderslab.app.task.Task;
import pl.coderslab.app.task.TaskService;

import javax.validation.Valid;
import java.util.List;

public class TaskCategoryController {
    @Autowired
    public TaskCategoryService taskCategoryService;

    @GetMapping("/add")
    public String add(Model model){
        model.addAttribute("task", new Task());
        return "taskCategoryAdd";
    }
    @PostMapping("/add")
    public String addUser(@Valid TaskCategory taskCategory, BindingResult result){
        if (result.hasErrors()){
            return "taskAdd";
        }taskCategoryService.saveTaskCategory(taskCategory);
        return "redirect:list";

    }
    @GetMapping("/list")
    public String list(Model model) {
        List<TaskCategory> tasksCategory = taskCategoryService.findAll();
        model.addAttribute("tasksCategory", tasksCategory);
        return "taskCategoryList";

    }
    @GetMapping("/update/{id}")
    public String update(@PathVariable Long id, Model model) {
        TaskCategory tasksCategory = taskCategoryService.readTaskCategory(id);
        model.addAttribute("tasksCategory",tasksCategory);
        return "taskCategoryAdd";
    }
    @PostMapping("/update/{id}")
    public String update(@Valid TaskCategory taskCategory, BindingResult result) {
        if (result.hasErrors()) {
            return "taskCategoryAdd";
        }
        taskCategoryService.updateTaskCategory(taskCategory);
        return "redirect:../list";
    }
    @GetMapping("/delete/{id}")
    public String delete(@PathVariable Long id) {
        taskCategoryService.deleteTaskCategory(id);
        return "redirect:../list";
    }

}
