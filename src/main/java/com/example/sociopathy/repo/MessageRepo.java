package com.example.sociopathy.repo;

import com.example.sociopathy.model.Message;
import com.example.sociopathy.model.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.CrudRepository;

import java.util.List;


public interface MessageRepo extends CrudRepository<Message, Long> {
    Page<Message> findByTag(String tag, Pageable page);
    Message findByPostId(String postId);
    List<Message> findByAuthor(User author);
    Page<Message> findAll(Pageable page);
}