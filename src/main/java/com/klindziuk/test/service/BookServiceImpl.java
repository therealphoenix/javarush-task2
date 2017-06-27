package com.klindziuk.test.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.klindziuk.test.model.Book;
import com.klindziuk.test.model.User;
import com.klindziuk.test.repository.BookRepository;
import com.klindziuk.test.repository.UserRepository;

@Service
public class BookServiceImpl implements BookService {

	@Resource
	private BookRepository bookRepository;

	@Override
	@Transactional
	public Book create(Book book) {
		Book createdBook = book;
		return bookRepository.save(createdBook);
	}

	@Override
	@Transactional
	public Book findById(int id) {
		return bookRepository.findOne(id);
	}

	@Override
	@Transactional
	public Book delete(int id) {
		Book deletedBook = bookRepository.findOne(id);
		bookRepository.delete(deletedBook);
		return deletedBook;
	}

	@Override
	@Transactional
	public List<Book> findAll() {
		return bookRepository.findAll();
	}

	@Override
	@Transactional
	public Book update(Book book) {
		Book updatedBook = bookRepository.findOne(book.getId());
		updatedBook.setName(book.getName());
		updatedBook.setYear(book.getYear());
		updatedBook.setQuantity(book.getQuantity());
		updatedBook.setIsBlocked(book.getIsBlocked());
		return updatedBook;
	}

	@Override
	@Transactional
	public List<Book> search(String name) {
		return bookRepository.findByName(name);
	}

}
