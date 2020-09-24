package com.example.sociopathy.repo;

import com.example.sociopathy.model.Message;
import com.example.sociopathy.model.User;
import org.springframework.data.repository.CrudRepository;

import java.util.List;


public interface MessageRepo extends CrudRepository<Message, Long> {
    List<Message> findByTag(String tag);
    Message findByPostId(String postId);
    List<Message> findByAuthor(User author);
    List<Message> findAll();
}