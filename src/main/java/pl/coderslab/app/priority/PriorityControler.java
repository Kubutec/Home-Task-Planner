package pl.coderslab.app.priority;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;
@Controller
public class PriorityControler {
    @Autowired
    public PriorityService priorityService;


    @GetMapping("/list")
    public String list(Model model) {
        List<Priority> priority = priorityService.findAll();
        model.addAttribute("priority", priority);
        return "";

    }

}
