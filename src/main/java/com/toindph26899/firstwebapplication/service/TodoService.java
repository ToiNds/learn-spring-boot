package com.toindph26899.firstwebapplication.service;

import com.toindph26899.firstwebapplication.entity.Todo;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Service
public class TodoService {

    private static List<Todo> todos = new ArrayList<>();

    static {
        todos.add(new Todo(1, "toindph26899", "Spring framework 6",
                LocalDate.now().plusYears(1), false));

        todos.add(new Todo(2, "toindph26899", "Spring boot 3",
                LocalDate.now().plusYears(2), false));

        todos.add(new Todo(3, "toindph26899", "Learn fullstack",
                LocalDate.now().plusYears(3), true));
    }

    public List<Todo> findByUsername(String name) {
        return todos;
    }

}
