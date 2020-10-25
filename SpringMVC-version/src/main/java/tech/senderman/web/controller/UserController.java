package tech.senderman.web.controller;

import java.util.Locale;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import tech.senderman.persistence.model.Func;
import tech.senderman.persistence.model.User;
import tech.senderman.security.ActiveUserStore;
import tech.senderman.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserController {
    private final static Logger LOGGER = LoggerFactory.getLogger(User.class);

    @Autowired
    ActiveUserStore activeUserStore;

    @Autowired
    IUserService userService;

    @RequestMapping(value = "/loggedUsers", method = RequestMethod.GET)
    public String getLoggedUsers(final Locale locale, final Model model) {
        model.addAttribute("users", activeUserStore.getUsers());
        return "users";
    }

    @RequestMapping(value = "/loggedUsersFromSessionRegistry", method = RequestMethod.GET)
    public String getLoggedUsersFromSessionRegistry(final Locale locale, final Model model) {
        model.addAttribute("users", userService.getUsersFromSessionRegistry());
        return "users";
    }

    @RequestMapping(value = "/funcAdd", method = RequestMethod.GET)
    public String getUsersF(final Locale locale, final Model model) {
        model.addAttribute("users", userService.getAllUsers());
        return "funcAdd";
    }

    @RequestMapping(value = "/users", method = RequestMethod.GET)
    public String getUsers(final Locale locale, final Model model) {
        model.addAttribute("users", userService.getAllUsers());
        return "users";
    }

    @RequestMapping(value = "/delete", method = RequestMethod.GET)
    public String delUser(final Locale locale, final Model model, @RequestParam(value="id", required=true)  long id) {
        if(userService.getUserByID(id).isPresent())
            userService.deleteUser(userService.getUserByID(id).get());
        LOGGER.info("Attempting to delete user with id {}", id);

        model.addAttribute("users", userService.getAllUsers());
        return "users";
    }

    @RequestMapping(value = "/addRole", method = RequestMethod.GET)
    public String addRole(final Locale locale, final Model model, @RequestParam(value="id", required=true)  long id) {
        if (userService.getUserByID(id).isPresent())
            userService.addRole(userService.getUserByID(id).get());
        LOGGER.info("Attempting addRole ADMIN to user with id {}", id);

        model.addAttribute("users", userService.getAllUsers());
        return "users";
    }

}
