package com.klindziuk.test.service;

import java.util.List;

import com.klindziuk.test.model.Book;

public interface BookService {
	public Book create(Book book);
    public Book delete(int id);
    public List<Book> findAll();
    public Book update(Book book);
    public Book findById(int id);
    public List<Book> search(String s);

}
