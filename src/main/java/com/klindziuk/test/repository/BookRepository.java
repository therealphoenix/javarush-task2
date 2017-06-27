package com.klindziuk.test.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klindziuk.test.model.Book;
import com.klindziuk.test.repository.custom.BookRepositoryCustom;

public interface BookRepository extends JpaRepository<Book, Integer>, BookRepositoryCustom {

}
