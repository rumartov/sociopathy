package com.example.sociopathy.controller;

import com.example.sociopathy.model.Message;
import com.example.sociopathy.model.User;
import com.example.sociopathy.repo.MessageRepo;
import com.example.sociopathy.repo.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class ProfileController {
    @Autowired
    UserRepo userRepo;
    @Autowired
    MessageRepo messageRepo;

    @GetMapping("/main/profile/{username}")
    public String getProfile(@PathVariable("username") String username, Model model){
        User user = userRepo.findByUsername(username);
        Iterable<Message> messages = messageRepo.findByAuthor(user);

        model.addAttribute("user", user);
        model.addAttribute("messages", messages);
        return "profile";
    }
}
