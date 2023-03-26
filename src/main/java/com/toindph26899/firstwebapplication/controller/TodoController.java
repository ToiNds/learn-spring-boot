package com.toindph26899.firstwebapplication.controller;

import com.toindph26899.firstwebapplication.entity.Todo;
import com.toindph26899.firstwebapplication.service.TodoService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class TodoController {

    private TodoService todoService;

    public TodoController(TodoService todoService) {
        this.todoService = todoService;
    }

    @RequestMapping(value = "list-todos")
    public String todos(ModelMap map) {

        return "/todos/list-todos";
    }

}
