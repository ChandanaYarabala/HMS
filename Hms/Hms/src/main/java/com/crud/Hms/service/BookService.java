package com.crud.Hms.service;

import com.crud.Hms.entity.Book;
import com.crud.Hms.repository.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookService {
    @Autowired
    private BookRepository bookRepository;

    public Book insert(Book book){
        return bookRepository.save(book);
    }
    public Book getByID(Integer id){
        return bookRepository.getById(id);
    }
}
