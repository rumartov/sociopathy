package com.example.sociopathy.repo;

import com.example.sociopathy.model.Message;
import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.UUID;

public interface MessageRepo extends CrudRepository<Message, Long> {
    List<Message> findByTag(String tag);
    Message findByPostId(String postId);
    List<Message> findAll();
}