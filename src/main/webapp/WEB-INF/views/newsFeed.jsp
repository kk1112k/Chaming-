<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

    <link href="/resources/css/common.css" rel="stylesheet" type="text/css" />
    <link href="/resources/css/main.css" rel="stylesheet" type="text/css" />
<link rel="icon" href="/resources/images/favicon.png">
    <link rel="instagram-icon" href="/resources/images/favicon.png">

</head>



<body class="h-100">

    <!-- navigation -->
    <nav>
      <div class="nav-container">
        <div class="nav-1">
            <!-- <img src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/logo.png" alt="logo_img">
            <div class="vl"></div> -->
            <img class="logo_instagram_txt" src="/resources/images/logo_text.png" alt="logo_text">
        </div>
        <input id="searchInput" type="search" class="input-search" placeholder="검색">
        <div class="nav-2">
           <a href="/newsfeed"><img src="/resources/images/home.png" alt="홈"></a>
          <a href="/chatting"><img src="/resources/images/dm.png" alt="DM"></a>
          <a href="/newsfeed"><img src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/explore.png" alt="탐색"></a>
          <a href="/newsfeed"><img src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/heart.png" alt="하트"></a>
          <a href="/myPage"><img src="/resources/images/mypage.png" alt="DM"></a>
        </div>
      </div>
    </nav>
    <!-- main -->
    <main>
      <div class="feeds">
        <!-- article -->
        <article>
          <header>
            <div class="profile-of-article">
              <img class="img-profile pic" src="/resources/images/logo_text.png" alt="dlwlrma님의 프로필 사진" width="300" height="300">
              <span class="userID main-id point-span">dlwlrma</span>
            </div>
            <img class="icon-react icon-more" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/more.png" alt="more">
          </header>
          <div class="main-image">
            <img src="/resources/images/logo_text.png" alt="dlwlrma님의 피드 사진" class="mainPic">
          </div>
          <div class="icons-react">
            <div class="icons-left">
              <img class="icon-react" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/heart.png" alt="하트">
              <img class="icon-react" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/comment.png" alt="말풍선">
              <img class="icon-react" src="/resources/images/dm.png" alt="DM">  
            </div>
            <img class="icon-react" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/bookmark.png" alt="북마크">
          </div>
          <!-- article text data -->
          <div class="reaction">
            <div class="liked-people">
              <img class="pic" src="/resources/images/logo_text.png" alt="johnnyjsuh님의 프로필 사진">
              <p><span class="point-span">johnnyjsuh</span>님 <span class="point-span">외 2,412,751명</span>이 좋아합니다</p>
            </div>
            <div class="description">
              <p><span class="point-span userID">dlwlrma</span><span class="at-tag">@wkorea @gucci</span> 🌱</p>
            </div>
            <div class="comment-section">
              <ul class="comments">
                <li>
                  <span><span class="point-span userID">postmalone</span>내가 입으면 더 잘어울릴 것 같아</span>
                  <div>
                    <img class="comment-more" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/more.png" alt="more">
                    <div class="comment-like">
                      <img class="comment-heart" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/heart.png" alt="하트">
                      <img class="comment-heart-liked" src="/resources/images/liked.png" alt="좋아요된하트">
                    </div>
                  </div>
                </li>
                <!-- input 값 여기에 추가 -->
              </ul>
              <div class="time-log">
                <span>32분 전</span>
              </div>
            </div>
          </div>
          <div class="hl"></div>
          <div class="comment">
            <input id="input-comment" class="input-comment" type="text" placeholder="댓글 달기..." >
            <button type="submit" class="submit-comment" disabled>게시</button>
          </div>
        </article>
        <article>
          <header>
            <div class="profile-of-article">
              <img class="img-profile pic" src="/resources/images/logo_text.png" alt="thisisyourhyung님의 프로필 사진">
              <span class="userID main-id point-span">thisisyourhyung</span>
            </div>
            <img class="icon-react icon-more" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/more.png" alt="more">
          </header>
          <div class="main-image">
            <img src="/resources/images/logo_text.png" alt="thisisyourhyung님의 피드 사진" class="mainPic">
          </div>
          <div class="icons-react">
            <div class="icons-left">
              <img class="icon-react" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/heart.png" alt="하트">
              <img class="icon-react" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/comment.png" alt="말풍선">
              <img class="icon-react" src="/resources/images/dm.png" alt="DM">  
            </div>
            <img class="icon-react" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/bookmark.png" alt="북마크">
          </div>
          <!-- article text data -->
          <div class="reaction">
            <div class="liked-people">
              <img class="pic" src="/resources/images/logo_text.png" alt="_jeongjaehyun님의 프로필 사진">
              <p><span class="point-span">_jeongjaehyun</span>님 <span class="point-span">외 4,612,203명</span>이 좋아합니다</p>
            </div>
            <div class="description">
              <p><span class="point-span userID">thisisyourhyung</span>코로나 언제 사라지나 ㅠㅠ 여행 가고 싶다~~</p>
            </div>
            <div class="comment-section">
              <ul class="comments">
                <li>
                  <span><span class="point-span userID">williamhammington</span>나도 호주 가고 싶다!</span>
                  <div>
                    <img class="comment-more" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/more.png" alt="more">
                    <div class="comment-like">
                      <img class="comment-heart" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/heart.png" alt="하트">
                      <img class="comment-heart-liked" src="img/liked.png" alt="좋아요된하트">
                    </div>
                  </div>
                </li>
                <!-- input 값 여기에 추가 -->
              </ul>
              <div class="time-log">
                <span>1시간 전</span>
              </div>
            </div>
          </div>
          <div class="hl"></div>
          <div class="comment">
            <input id="input-comment2" class="input-comment" type="text" placeholder="댓글 달기..." >
            <button type="submit" class="submit-comment" disabled>게시</button>
          </div>
        </article>

      </div>
      <!-- main-right -->
      <div class="main-right">
        <div class="myProfile">
          <img class="pic" src="/resources/images/logo_text.png" alt="thisisyourhyung님의 프로필 사진">
          <div>
            <span class="userID point-span">thisisyourhyung</span>
            <span class="sub-span">JIHYUNG LEE</span>  
          </div>
        </div>
        <!-- story section -->
        <div class="section-story">
          <div class="menu-title">
            <span class="sub-title">스토리</span>
            <span class="find-more">모두 보기</span>
          </div>
          <ul class="story-list">
            <li>
              <div class="gradient-wrap">
                <img class="img-profile story" src="/resources/images/logo_text.png" alt="wecode_bootcamp님의 프로필 사진">
              </div>
              <div class="profile-text">
                <span class="userID point-span">wecode_bootcamp</span>
                <span class="sub-span">12분 전</span>  
              </div>
            </li>
            <li>
              <div class="gradient-wrap">
                <img class="img-profile story" src="/resources/images/logo_text.png" alt="han_ye_seul님의 프로필 사진">
              </div>
              <div class="profile-text">
                <span class="userID point-span">han_ye_seul</span>
                <span class="sub-span">28분 전</span>  
              </div>
            </li>
            <li>
              <div class="gradient-wrap">
                <img class="img-profile story" src="/resources/images/logo_text.png" alt="dntlrdl님의 프로필 사진">
              </div>
              <div class="profile-text">
                <span class="userID point-span">dntlrdl</span>
                <span class="sub-span">40분 전</span>  
              </div>
            </li>
            <li>
              <div class="gradient-wrap">
                <img class="img-profile story" src="/resources/images/logo_text.png" alt="i_icaruswalks님의 프로필 사진">
              </div>
              <div class="profile-text">
                <span class="userID point-span">i_icaruswalks</span>
                <span class="sub-span">56분 전</span>  
              </div>
            </li>
          </ul>
        </div>
        <!-- recommendation section -->
        <div class="section-recommend">
          <div class="menu-title">
            <span class="sub-title">회원님을 위한 추천</span>
            <span class="find-more">모두 보기</span>
          </div>
          <ul class="recommend-list">
            <li>
              <div class="recommend-friend-profile">
                <img class="img-profile" src="/resources/images/logo_text.png" alt="renebaebae님의 프로필 사진">
                <div class="profile-text">
                  <span class="userID point-span">renebaebae</span>
                  <span class="sub-span">hi_sseulgi님 외 2명이 팔로우합니다</span>
                </div>
              </div>
              <span class="btn-follow">팔로우</span>
            </li>
            <li>
              <div class="recommend-friend-profile">
                <img class="img-profile" src="/resources/images/logo_text.png" alt="_jeongjaehyun님의 프로필 사진">
                <div class="profile-text">
                  <span class="userID point-span">_jeongjaehyun</span>
                  <span class="sub-span">johnnyjsuh님이 팔로우합니다</span>  
                </div>
              </div>
              <span class="btn-follow">팔로우</span>
            </li>
            <li>
              <div class="recommend-friend-profile">
                <img class="img-profile" src="/resources/images/logo_text.pngs" alt="leehi_hi님의 프로필 사진">
                <div class="profile-text">
                  <span class="userID point-span">leehi_hi</span>
                  <span class="sub-span">jennierubyjane님 외 5명이 팔로우합...</span>  
                </div>
              </div>
              <span class="btn-follow">팔로우</span>
            </li>
          </ul>
        </div>
        <footer>
          <p class="insta-sccript">
            소개 ∙ 도움말 ∙ 홍보 센터 ∙ API ∙ 채용 정보 ∙ 개인정보처리방침 ∙ <br>약관 ∙ 위치 ∙ 인기계정 ∙ 해시태그 ∙ 언어
            <br><br>
            © 2020 INSTAGRAM FROM FACEBOOK
          </p>
        </footer>
      </div>
    </main>
    <script src="/resources/js/main.js"></script>

        <!--**********************************
            Content body end
        ***********************************-->
        
        
        
    </div>
    <!--**********************************
        Main wrapper end
    ***********************************-->

    <!--**********************************
        Scripts
    ***********************************-->
    <script src="/resources/plugins/common/common.min.js"></script>
    <script src="/resources/js/custom.min.js"></script>
    <script src="/resources/js/settings.js"></script>
    <script src="/resources/js/gleek.js"></script>
    <script src="/resources/js/styleSwitcher.js"></script>

</body>

</html>