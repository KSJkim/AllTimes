package com.AllTimes.controller;


import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.AllTimes.dao.ArticleDao;
import com.AllTimes.dto.ArticleDto;
import com.AllTimes.service.ArticleService;
import com.AllTimes.service.MemberService;
import com.AllTimes.dto.CommentsDto;


@Controller
public class ArticleController {
	
	private ModelAndView mav;
	
	@Autowired
	private ArticleService artSvc;
	
	@RequestMapping(value="/selectArticleList")
	public ModelAndView articleList(String ar_genre, String category) {
		System.out.println("/articleList : move to article List");
		System.out.println("ar_genre : "+ar_genre);
		mav = artSvc.selectArticleList(ar_genre);
		
		return mav;
	}
	
	@RequestMapping(value="/articleRead")
	public ModelAndView articleRead(int ar_no, String ar_genre) {
		System.out.println("/articleRead : move to article");
		System.out.println("ar_no : "+ar_no);
		System.out.println("ar_genre : "+ ar_genre);
		mav = artSvc.articleRead(ar_no, ar_genre);
		
		return mav;
	}
	
	@RequestMapping(value="/commentsWrite")
	public ModelAndView commentsWrite(CommentsDto comment, RedirectAttributes ra) {
		System.out.println("/commentsPost : Insert comments on article");
		System.out.println(comment);
		mav = artSvc.commentsWrite(comment, ra);
		
		return mav;
	}
	

	
	/* 기사 전체 목록 */
	@RequestMapping (value="ArticleList")
	public ModelAndView ArticleList() {
		
		mav = artSvc.ArticleList();
		
		return mav; 
		
	}
	

	/* 기사 정보 페이지 */
	@RequestMapping (value="ArticleInfo")
	public ModelAndView ArticleInfo(String ar_no) {
		System.out.println("/ArticleInfo 기사 정보 페이지 이동 요청");
		
		mav = artSvc.ArticleInfo(ar_no);
		
		return mav;
	}
	
	/* 기사 검색 controller */
	@RequestMapping (value="SearchArticle")
	public ModelAndView SearchArticle(String ArticleSearch, String SearchType) {
		System.out.println("검색내용 : " + ArticleSearch);
		System.out.println("검색타입 : " + SearchType);
		
		mav = artSvc.SearchArticle(ArticleSearch, SearchType);
		
		return mav;
	}

}
