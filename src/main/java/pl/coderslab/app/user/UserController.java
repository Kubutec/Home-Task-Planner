package pl.coderslab.app.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.awt.print.Book;
import java.util.List;

@Controller
@RequestMapping("/users")
public class UserController {
    @Autowired
    public UserService userService;

    @GetMapping("/add")
    public String add(Model model){
        model.addAttribute("user", new User());
        return "userAdd";
    }
    @PostMapping("/add")
    public String addUser(@Valid User user, BindingResult result){
        if (result.hasErrors()){
            return "userAdd";
        }userService.saveUser(user);
        return "redirect:list";

    }
    @GetMapping("/list")
    public String list(Model model) {
        List<User> users = userService.findAll();
        model.addAttribute("users", users);
        return "userList";

    }
    @GetMapping("/update/{id}")
    public String update(@PathVariable Long id, Model model) {
        User user= userService.readUser(id);
        model.addAttribute("user",user);
        return "userAdd";
    }
    @PostMapping("/update/{id}")
    public String update(@Valid User user, BindingResult result) {
        if (result.hasErrors()) {
            return "userAdd";
        }
        userService.updateUser(user);
        return "redirect:../list";
    }
    @GetMapping("/delete/{id}")
    public String delete(@PathVariable Long id) {
        userService.deleteUser(id);
        return "redirect:../list";
    }

}
