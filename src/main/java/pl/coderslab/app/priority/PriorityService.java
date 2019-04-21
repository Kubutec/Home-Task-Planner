package pl.coderslab.app.priority;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class PriorityService {
    @Autowired
    public PriorityRepository priorityRepository;

    public void save(Priority priority) {
        priorityRepository.save(priority);
    }

    public Priority read(Long id) {
        return priorityRepository.findById(id).orElse(null);
    }

    public void update(Priority priority) {

        priorityRepository.save(priority);
    }

    public void delete(Long id) {
        priorityRepository.deleteById(id);
    }

    public List<Priority> findAll() {
        return priorityRepository.findAll();
    }
}
