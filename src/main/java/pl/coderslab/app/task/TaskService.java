package pl.coderslab.app.task;

import org.hibernate.Hibernate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class TaskService {
    @Autowired
    public TaskRepository taskRepository;

    public void saveTask(Task task) {
        taskRepository.save(task);
    }

    public Task read(Long id) {
        return taskRepository.findById(id).orElse(null);
    }

    public void update(Task task) {

        taskRepository.save(task);
    }

    public void delete(Long id) {
        taskRepository.deleteById(id);
    }

    public List<Task> findAll() {
        return taskRepository.findAll();
    }
}

