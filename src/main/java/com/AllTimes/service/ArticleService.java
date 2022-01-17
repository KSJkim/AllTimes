package com.AllTimes.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.AllTimes.dao.ArticleDao;
import com.AllTimes.dto.ArticleDto;
import com.AllTimes.dto.CommentsDto;
import com.google.gson.Gson;



@Service
public class ArticleService {



	private ModelAndView mav;
	
	@Autowired
	private ArticleDao artDao;
	/*---------- 기사 정보 관련 ----------*/
	public ModelAndView selectArticleList(String ar_genre) {
		System.out.println("ArticleService.articleList()");
		mav = new ModelAndView();
		
		int articleCount = artDao.selectArticleCount(ar_genre);
		mav.addObject("articleCount",articleCount);
		
		ArrayList<ArticleDto> articleList= artDao.selectArticleList(ar_genre);
		mav.addObject("articleList", articleList);
		
		System.out.println(articleCount);
		System.out.println(articleList);
		
		switch(ar_genre) {
			case "POLITICS" : mav.setViewName("article/POLITICS_PAGE");break;
			case "ECONOMY" : mav.setViewName("article/ECONOMY_PAGE");break;
			case "SOCIETY" : mav.setViewName("article/SOCIETY_PAGE");break;
			case "CULTURE" : mav.setViewName("article/CULTURE_PAGE");break;
			case "SPORT" : mav.setViewName("article/SPORT_PAGE");break;
			case "INTERNATIONAL" : mav.setViewName("article/INTERNATIONAL_PAGE");break;
			case "SCIENCE" : mav.setViewName("article/SCIENCE_PAGE");break;
			case "COVID" : mav.setViewName("article/COVIE_PAGE");break;
		}
		
		ArrayList<ArticleDto> ArticleHits = artDao.selectMainArticleHits();
		ArrayList<ArticleDto> ArticleLatestFooter = artDao.selectArticleLatestFooter();
		mav.addObject("ArticleHits", ArticleHits);
		mav.addObject("ArticleLatestFooter", ArticleLatestFooter);
		return mav;
		
	}

	public ModelAndView articleRead(int ar_no, String ar_genre) {
		System.out.println("ArticleService.articleRead()");
		mav = new ModelAndView();
		
		artDao.updateArticleHits(ar_no);
		int articleHits = artDao.selectArticleHits(ar_no);
		
		ArticleDto articleRead = artDao.selectArticleRead(ar_no);
		System.out.println(articleRead);
		
		ArrayList<CommentsDto> commentsList = artDao.selectCommentsList(ar_no);
		System.out.println(commentsList);
		
		int commentsCount = artDao.selectCommentsCount(ar_no);
		
		mav.addObject("articleRead", articleRead);
		mav.addObject("commentsList",commentsList);
		mav.addObject("commentsCount",commentsCount);
		
		switch(ar_genre) {
			case "POLITICS" : mav.setViewName("article/POLITICS_ARTICLE");break;
			case "ECONOMY" : mav.setViewName("article/ECONOMY_ARTICLE");break;
			case "SOCIETY" : mav.setViewName("article/SOCIETY_ARTICLE");break;
			case "CULTURE" : mav.setViewName("article/CULTURE_ARTICLE");break;
			case "SPORT" : mav.setViewName("article/SPORT_ARTICLE");break;
			case "INTERNATIONAL" : mav.setViewName("article/INTERNATIONAL_ARTICLE");break;
			case "SCIENCE" : mav.setViewName("article/SCIENCE_ARTICLE");break;
			case "COVID" : mav.setViewName("article/COVIE_ARTICLE");break;
		}
		
		ArrayList<ArticleDto> ArticleHits = artDao.selectMainArticleHits();
		ArrayList<ArticleDto> ArticleLatestFooter = artDao.selectArticleLatestFooter();
		mav.addObject("ArticleHits", ArticleHits);
		mav.addObject("ArticleLatestFooter", ArticleLatestFooter);
		return mav;
	}

	public ModelAndView commentsWrite(CommentsDto comment, RedirectAttributes ra) {
		System.out.println("ArticleService.commentsWrite()");
		mav = new ModelAndView();
		
		//input the comment
		int cm_no = artDao.selectCommentsNumber();//return cm_no
		comment.setCm_no(cm_no);
		//comment write
		int commentsInsert = artDao.insertCommentsWrite(comment);

		return mav;
	}
	/*---------- 기사 정보 관련 끝 ----------*/
	
	/*---------- 메인페이지 기사 관련 ----------*/
	/* 기사 제목 검색 service*/
	public ModelAndView SearchArticle(String SearchArticle) {
		
		mav = new ModelAndView();
		
		ArrayList<ArticleDto> SearchArt = artDao.selectSearchArticle(SearchArticle);
		
		System.out.println(SearchArt);

		
		mav.addObject("SearchArt", SearchArt);
		
		/*footer*/
		ArrayList<ArticleDto> ArticleHits = artDao.selectMainArticleHits();
		ArrayList<ArticleDto> ArticleLatestFooter = artDao.selectArticleLatestFooter();
		mav.addObject("ArticleHits", ArticleHits);
		mav.addObject("ArticleLatestFooter", ArticleLatestFooter);
		
		mav.setViewName("article/SearchArticle");
		
		return mav;
	}

	
	/* 기사 전체 목록 service*/
	public ModelAndView ArticleList() {
		
		mav = new ModelAndView();
		
		ArrayList<ArticleDto> ArticleList = artDao.selectAllArticleList();
		System.out.println(ArticleList);
		mav.addObject("ArticleList", ArticleList);
		
		/*footer*/
		ArrayList<ArticleDto> ArticleHits = artDao.selectMainArticleHits();
		ArrayList<ArticleDto> ArticleLatestFooter = artDao.selectArticleLatestFooter();
		mav.addObject("ArticleHits", ArticleHits);
		mav.addObject("ArticleLatestFooter", ArticleLatestFooter);
		
		mav.setViewName("home");
		
		return mav;
	}
	

	/* 기사 정보 페이지 service */
	public ModelAndView ArticleInfo(String ar_no) {
		
		mav = new ModelAndView();
		
		ArticleDto ArticleInfo = artDao.selectArticleInfo(ar_no);
		System.out.println(ArticleInfo);
		
		mav.addObject("ArticleInfo", ArticleInfo);
		
		/*footer*/
		ArrayList<ArticleDto> ArticleHits = artDao.selectMainArticleHits();
		ArrayList<ArticleDto> ArticleLatestFooter = artDao.selectArticleLatestFooter();
		mav.addObject("ArticleHits", ArticleHits);
		mav.addObject("ArticleLatestFooter", ArticleLatestFooter);
		
		mav.setViewName("article/ArticleInfo");
		
		return mav;
	}
	/*---------- 메인페이지 기사 관련 끝----------*/


}
