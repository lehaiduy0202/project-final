package sample.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import sample.model.NewsAdmin;
import sample.model.login;
import sample.service.LoginService;
import sample.service.NewsItemsService;

@Controller
public class MainController {

	@Autowired
	private NewsItemsService newsItemService;
	@Autowired
	private LoginService loginService;

	@GetMapping("/admin_news")
	public String home(HttpServletRequest request) {
		request.setAttribute("newslist", newsItemService.findAll());
		return "Admin_News";
	}

	@PostMapping("/save-news")
	public String saveNews(NewsAdmin newsadmin, BindingResult bindingResult, HttpServletRequest request) {
		newsadmin.setDate(new Date());
		newsItemService.save(newsadmin);
		request.setAttribute("newslist", newsItemService.findAll());
		return "Admin_News";
	}

	@GetMapping("/add")
	public String addNews(HttpServletRequest request) {
		return "AddNews";
	}

	@GetMapping("/")
	public String index(HttpServletRequest request) {
		return "index";
	}

	@GetMapping("/login")
	public String login(login login, BindingResult bindingResult, HttpServletRequest request) {
		request.setAttribute("login", login);
		if (loginService.findByUserNameByPassword(login.getUsername(), login.getPassword()) == null) {
			return "login";
		} else {
			request.setAttribute("newslist", newsItemService.findAll());
			return "Admin_News";
		}
	}

	@GetMapping("/update{id}")
	public String update(@RequestParam  int id,	 HttpServletRequest request, NewsAdmin newsadmin, BindingResult bindingResult) {
		newsItemService.findNews(id);
		newsItemService.save(newsadmin);
		request.setAttribute("newslist", newsItemService.findAll());
		return "UpdateNews";
	}
	
	@GetMapping("/delete_news")
	public String delNews(@RequestParam int id, HttpServletRequest request) {
		newsItemService.delete(id);
		request.setAttribute("newslist", newsItemService.findAll());
		return "Admin_News";
	}

	@GetMapping("/listnews")
	public String list(HttpServletRequest request, HttpServletResponse response, NewsAdmin newsadmin)
			throws IOException {

		// newsadmin=newsItemService.loadImage(newsadmin.getId());
		// response.setContentType("image/jpg");
		// ServletOutputStream outputStream= response.getOutputStream();
		// outputStream.write(newsadmin.getImages());
		request.setAttribute("newslist", newsItemService.findAll());
		// outputStream.close();

		return "ListNews";
	}

}
