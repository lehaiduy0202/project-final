package sample.model;

import java.io.Serializable;
import java.sql.Blob;
import java.util.Date;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="news_item")
public class NewsAdmin implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private  int id;
	private String title ;
	@Temporal(TemporalType.DATE)
	private Date date;
	private String description;
	private String content;
	@Lob
	@Basic(fetch=FetchType.LAZY)	
	private byte[] images;
	
	public NewsAdmin(){}

	public NewsAdmin(String title, Date date, String description, String content, byte[] images) {
		super();
		this.title = title;
		this.date = date;
		this.description = description;
		this.content = content;
		this.images = images;
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

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public byte[] getImages() {
		return images;
	}

	public void setImages(byte[] images) {
		this.images = images;
	}

	
	
	
}
