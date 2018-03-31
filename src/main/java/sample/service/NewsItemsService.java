package sample.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import sample.dao.NewsItemReponsitory;
import sample.model.NewsAdmin;

@Service
@Transactional
public class NewsItemsService {
	private final NewsItemReponsitory newsitemReponsitory;

	public NewsItemsService(NewsItemReponsitory newsitemReponsitory) {

		this.newsitemReponsitory = newsitemReponsitory;

	}
	public List<NewsAdmin> findAll() {
		List<NewsAdmin> newsadmin = new ArrayList<>();
		for (NewsAdmin news : newsitemReponsitory.findAll()) {
         newsadmin.add(news);
		}
		return newsadmin;	
	}
	public NewsAdmin  findNews( int id){
		
		return newsitemReponsitory.findOne(id);
		
	} 
	
	public void save(NewsAdmin newsadmin){
			newsitemReponsitory.save(newsadmin);
	}
	public void delete(int id){
		newsitemReponsitory.delete(id);
	}
    
	


}
