package pl.coderslab.app.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;

@Service
@Transactional
public class UserService {
    @Autowired
    public UserRepository userRepository;

    public void saveUser(User user) {
        userRepository.save(user);
    }

    public User readUser(Long id) {
        return userRepository.findById(id).orElse(null);
    }

    public void updateUser(User user) {

        userRepository.save(user);
    }

    public void deleteUser(Long id) {
        userRepository.deleteById(id);
    }

    public List<User> findAll() {
        return userRepository.findAll();
    }
}
