package pl.coderslab.app.taskCategory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.coderslab.app.task.Task;

import java.util.List;
@Service
@Transactional
public class TaskCategoryService {
    @Autowired
    public TaskCategoryRepository taskCategoryRepository;

    public void saveTaskCategory(TaskCategory taskCategory) {
        taskCategoryRepository.save(taskCategory);
    }

    public TaskCategory readTaskCategory(Long id) {
        return taskCategoryRepository.findById(id).orElse(null);
    }

    public void updateTaskCategory(TaskCategory taskCategory) {

        taskCategoryRepository.save(taskCategory);
    }

    public void deleteTaskCategory(Long id) {
        taskCategoryRepository.deleteById(id);
    }

    public List<TaskCategory> findAll() {
        return taskCategoryRepository.findAll();
    }
}
