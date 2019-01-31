package util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javaBean.User;
import util.DBUtils;

public class UserUtils {

    public static List<User> getUsers() {
        return DBUtils.getUsers();
    }

    public static User authUser(String email, String password) {
        //returns null if user invalid
        User user = null;
        List<User> users = DBUtils.getUsers();
        if (users == null) {
            //  initUsers();
        }
        for (User u : users) {
            System.out.println("User: " + u.getFirstName() + "Lastname: " + u.getLastName());
            if (u.getEmail().equals(email) && u.getPassword().equals(password)) {
                user = u;
                break;
            }
        }
        return user;
    }

    public static String validateUser(User user) {
        String msg = "";
        if (user.getEmail() == null || user.getEmail().equals("")
                || user.getLastName() == null || user.getLastName().equals("")
                || user.getFirstName() == null || user.getFirstName().equals("")
                || user.getPassword() == null || user.getPassword().equals("")) {
            msg += "Please enter non-empty values.";
        }

        List<User> users = DBUtils.getUsers();
        for (User u : users) {
            if (u.getEmail().equals(user.getEmail())) {
                msg += "Account already exists, please choose a unique email address.\n";
            }
        }
        return msg;
    }

    public static void addUser(User u) {
        DBUtils.createUser(u);
    }

    public static void removeUser(String email) {
        DBUtils.deleteUser(email);
    }

    public static void updateUser(User u) {
        DBUtils.updateUser(u);
    }
}
