package pl.mturuk.booklist.entity;

public class Book {

	private int id;
	private String title;
	private String author;
	private String isbn;
	private String year;

	public Book() {
	}

	public Book(int id) {
		this.id = id;
	}

	public Book(int id, String title, String author, String isbn, String year) {
		this(title, author, isbn, year);
		this.id = id;
	}

	public Book(String title, String author, String isbn, String year) {
		this.title = title;
		this.author = author;
		this.isbn = isbn;
		this.year = year;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

}
