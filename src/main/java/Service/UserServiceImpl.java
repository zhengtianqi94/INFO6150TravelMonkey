package Service;

import DAO.UserDAO;
import Entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by zheng on 2017/10/7.
 */

@Service("UserService")
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDAO userDAO;

    public User getUser(Integer id) {
        return userDAO.getUser(id);
    }

    public List<User> getUsers() {
        return userDAO.getUsers();
    }

    public void addUser(User user) {
        userDAO.addUser(user);
    }

    public void updateUser(User user) {
        userDAO.updateUser(user);
    }

    public String deleteUser(Integer id) {
        if (userDAO.deleteUser(id).equals("Success")) return "Success";
        else return userDAO.deleteUser(id);
    }
}
