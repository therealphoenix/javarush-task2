package com.klindziuk.test.repository.custom;

import java.util.List;

import com.klindziuk.test.model.Book;

public interface BookRepositoryCustom {
	List<Book> findByName(String name);
}
