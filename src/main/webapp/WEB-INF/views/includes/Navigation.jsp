<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <nav class="navbar top-nav">
        <div class="container">
    <button class="navbar-toggler hidden-lg-up " type="button" data-toggle="collapse" data-target="#exCollapsingNavbar2" aria-controls="exCollapsingNavbar2" aria-expanded="false" aria-label="Toggle navigation"> &#9776; </button>
    <div class="collapse navbar-toggleable-md" id="exCollapsingNavbar2"> <a class="navbar-brand" href="#">Responsive navbar</a>
            <ul class="nav navbar-nav " id="Navigation"> 
        <li class="nav-item" > <a class="nav-link Navigation" href="COVID_PAGE?category=COVID_PAGE" onclick="Navigation(this)" id="COVID_PAGE">COVID-19</a> </li>
        <li class="nav-item" > <a class="nav-link Navigation" href="POLITICS_PAGE?category=POLITICS_PAGE" onclick="Navigation(this)" id="POLITICS_PAGE">정치</a> </li>
        <li class="nav-item" > <a class="nav-link Navigation" href="ECONOMY_PAGE?category=ECONOMY_PAGE" onclick="Navigation(this)" id="ECONOMY_PAGE">경제</a> </li>
        <li class="nav-item" > <a class="nav-link Navigation" href="SOCIETY_PAGE?category=SOCIETY_PAGE" onclick="Navigation(this)" id="SOCIETY_PAGE">사회</a> </li>
        <li class="nav-item" > <a class="nav-link Navigation" href="CULTURE_PAGE?category=CULTURE_PAGE" onclick="Navigation(this)" id="CULTURE_PAGE">문화</a> </li>
        <li class="nav-item" > <a class="nav-link Navigation" href="SPORTS_PAGE?category=SPORTS_PAGE" onclick="Navigation(this)" id="SPORTS_PAGE">스포츠</a> </li>
        <li class="nav-item" > <a class="nav-link Navigation" href="INTERNATIONAL_PAGE?category=INTERNATIONAL_PAGE" onclick="Navigation(this)" id="INTERNATIONAL_PAGE">국제</a> </li>
        <li class="nav-item" > <a class="nav-link Navigation" href="SCIENCE_PAGE?category=SCIENCE_PAGE" onclick="Navigation(this)" id="SCIENCE_PAGE">IT</a> </li>
      </ul>
      
      
        <div class="search" style="width:380px;">
            <a href="#" class="btn btn-search" data-toggle="modal" data-target="#SearchArticleModal" style="right:-175px; top:6px;">
            	<i class="fa fa-search" style="color:white"></i>
            </a>
        </div>
        
        
         <div class="modal fade" id="SearchArticleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                
                <form action="SearchArticle" method="get" class="form-group">
				<div class="input-group" style="margin-top:15px; margin-bottom:15px;">
					<select name ="SearchType" style="margin-left:10px;">
						<option label="제목" value="TITLE"></option>
						<option label="내용" value="DETAIL"></option>
					</select>
					<input type="text" class="input-group-prepend" name="ArticleSearch" id="SearchArticle" name="SearchArticle"
					style="width:470px; border-top:none; border-left:none; border-right:none;
							border-bottom-color:#FD3A13; font-size:23px; margin-left:5px;"
							placeholder="검색어를 입력해주세요">
					<button type="submit" class="btn btn-search input-group-append" style="right:11px;"><i class="fa fa-search"></i></button>
				</div>
				</form>
                
                <hr>
                
                <div></div>
                
                
            </div>
        </div>
    </div>    
      
      
      
          </div>
  </div>
  
 <script src="${pageContext.request.contextPath }/resources/vendor/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/vendor/jquery-easing/jquery.easing.min.js"></script>
  
  
  	<script type="text/javascript">
  	
  		function Navigation(obj){
			$(".Navigation a").css("color","black").css("font-weight","bold");
			$(obj).css("color","#FD3A13").css("font-weight","bold").css("border-bottom","2px solid #FD3A13");
		}  	
  	
    </script>
    
      
      </nav>
