package com.jsun.site.entities;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Index;
import javax.persistence.Lob;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import java.io.Serializable;

@Entity
@Table(name = "Books", uniqueConstraints = {
		@UniqueConstraint(name = "Books_ISBNs", columnNames = { "Isbn" })},
		indexes = { @Index(name = "Books_Titles", columnList = "Title")
})
public class Book implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private long id;
	private String isbn;
	private String title;
	private String author;
	private double price;
	private String publisher;
	private byte[] previewPdf;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	
	@Basic(optional = false)
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	
	@Basic(optional = false)
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	@Basic(optional = false)
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	
	@Basic(optional = false)
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
	@Basic(optional = false)
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	
	@Lob
	public byte[] getPreviewPdf() {
		return previewPdf;
	}
	public void setPreviewPdf(byte[] previewPdf) {
		this.previewPdf = previewPdf;
	}
	
	
}
