package spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import spring.dao.BookDao;
import spring.dao.CustomerDAO;
import spring.entity.Book;
import spring.entity.Customer;

//@Service is applied to Service implementations
//Spring will automatically register the Service implementation thanks to component-scanning

@Service
public class ServiceImpl implements CustomerService, BookService{

	//need to implements customer DAO - inject DAO into Service
	//Spring will scan for component that implements CustomerDAO interface
	@Autowired
	private CustomerDAO customerDAO;
	
	
	@Override
	@Transactional //automatically begin and end transaction in Hibernate
	public List<Customer> getCustomers() {
		
		return customerDAO.getCustomers();
	}

	@Override
	@Transactional
	public void saveCustomer(Customer theCustomer) {
		
		customerDAO.saveCustomer(theCustomer);

	}

	@Override
	@Transactional
	public Customer getCustomers(int theId) {
		
		return customerDAO.getCustomers(theId);
	}

	@Override
	@Transactional
	public void deleteCustomer(int theId) {
		
		customerDAO.deleteCustomer(theId);

	}

	@Override
	@Transactional
	public List<Customer> searchCustomers(String theSearchName) {
		
		return customerDAO.searchCustomers(theSearchName);
	}

	
	/////////////////////////////////////////////////////////////////
	
	@Autowired //inject Book DAO into Service
	//Spring will scan for component that implements BookDao interface
	private BookDao bookDao;
	
	@Override
	@Transactional
	public List<Book> getBooks() {
		
		return bookDao.getBooks();
	}

	@Override
	@Transactional
	public void saveBook(Book theBook) {
		
		bookDao.saveBook(theBook);
		
	}

	@Override
	@Transactional
	public Book getBook(int theId) {
		
		return bookDao.getBook(theId);
	}

	@Override
	@Transactional
	public void deleteBook(int theId) {
		
		bookDao.deleteBook(theId);
		
	}

	@Override
	@Transactional
	public List<Book> searchBooks(String theSearchTitle) {
		
		return bookDao.searchBook(theSearchTitle);
	}

	@Override
	@Transactional
	public void buyBook(Book theBook) {
		
		bookDao.buyBook(theBook);
		
	}

}
