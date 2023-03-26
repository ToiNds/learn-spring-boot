package com.toindph26899.firstwebapplication.controller;

import com.toindph26899.firstwebapplication.entity.Todo;
import com.toindph26899.firstwebapplication.service.TodoService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Controller
public class TodoController {

    private List<Todo> todos = new ArrayList<>();
    private TodoService todoService;

    public TodoController(TodoService todoService) {
        this.todoService = todoService;
    }

    @RequestMapping(value = "list-todos")
    public String todos(ModelMap map) {

        if (todos.isEmpty()) {
            todos = todoService.findByUsername();
        }
        map.addAttribute("todos", todos);
        return "/todos/list-todos";
    }

    @GetMapping("add-todo")
    public String viewAddTodos() {
        return "/todos/add-todo";
    }

    @PostMapping("add-todo")
    public String addTodos(@RequestParam int id, @RequestParam String username,
                           @RequestParam String description, @RequestParam LocalDate localDate,
                           @RequestParam boolean done) {

        Todo todo = new Todo(id, username, description, localDate, done);
        todoService.addToDo(todo, todos);
        return "redirect:list-todos";
    }

    @GetMapping("update-todo")
    public String viewUpdateTodos(@RequestParam int id, ModelMap map) {
        Todo todo = todoService.getOne(id, todos);
        map.addAttribute("todo", todo);

        return "/todos/update-todo";
    }

    @PostMapping("update-todo")
    public String updateTodos(@RequestParam int id, @RequestParam String username,
                              @RequestParam String description, @RequestParam LocalDate localDate,
                              @RequestParam boolean done) {

        Todo todo = new Todo(id, username, description, localDate, done);
        todoService.update(id, todo, todos);
        return "redirect:list-todos";
    }

    @GetMapping("remove-todo")
    public String updateTodos(@RequestParam int id) {

        todoService.delete(id, todos);
        return "redirect:list-todos";
    }

}
