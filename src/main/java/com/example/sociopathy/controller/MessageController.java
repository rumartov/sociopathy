package com.example.sociopathy.controller;

import com.example.sociopathy.model.Message;
import com.example.sociopathy.repo.MessageRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class MessageController {
    @Autowired
    private MessageRepo messageRepo;

    @GetMapping("/main")
    public String main(Model model){
        List<Message> messages;

        messages = messageRepo.findAll();

        model.addAttribute("messages", messages);

        return "main";
    }

    @PostMapping("/main")
    public String main(String text, String tag, Model model){
        Message message = new Message(text, tag);

        messageRepo.save(message);

        List<Message> messages;

        messages = messageRepo.findAll();

        model.addAttribute("messages", messages);

        return "main";
    }

}
