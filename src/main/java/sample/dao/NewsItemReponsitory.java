package sample.dao;

import org.springframework.data.repository.CrudRepository;

import sample.model.NewsAdmin;

public interface NewsItemReponsitory extends CrudRepository<NewsAdmin,Integer> {

}
