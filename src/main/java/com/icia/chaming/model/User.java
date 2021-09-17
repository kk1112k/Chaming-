/**
 * <pre>
 * 프로젝트명 : BasicBoard
 * 패키지명   : com.icia.web.model
 * 파일명     : User.java
 * 작성일     : 2021. 1. 12.
 * 작성자     : daekk
 * </pre>
 */
package com.icia.chaming.model;

import java.io.Serializable;

/**
 * <pre>
 * 패키지명   : com.icia.web.model
 * 파일명     : User.java
 * 작성일     : 2021. 1. 12.
 * 작성자     : daekk
 * 설명       : 사용자 모델
 * </pre>
 */
public class User implements Serializable
{
	private static final long serialVersionUID = 8638989512396268543L;
	
	private String userId;		//아이디
	private String userClass;	//회원구분코드
	private String areaNum;		//지역
	private String subAreaNum;	//부지역
	private String userPwd;		//비밀번호
	private String userName;	//이름
	private String userEmail;	//이메일주소
	private String userGender;	//성별
	private String status;		//회원상태
	private String regDate;		//가입일
	private String userBirth;
	private String userCompany;
	private String userSchool;
	private String usrLife;
	private String chatComment;
	private String chatUser;
	private String chatDate;
	private String userProfile;
	private String userAddr;
	
	private String areaName;	//지역이름
	private String subAreaName; //부지역이름
	
	private long startRow;			// 시작 rownum
	private long endRow;			// 끝 rownum
	
	private String searchType;      // 검색타입(1:이름, 2:제목, 3:내용)
	private String searchValue;      // 검색값

	
	/**
	 * 생성자 
	 */
	public User()
	{
	    userId = "";		//아이디
		userClass = "";	//회원구분코드
		areaNum = "";		//지역
		subAreaNum = "";	//부지역
		userPwd = "";		//비밀번호
		userName = "";	//이름
		userEmail = "";	//이메일주소
		userGender = "";	//성별
		status = "";		//회원상태
		regDate = "";		//가입일
		userBirth = "";
		userCompany = "";
		userSchool = "";
		usrLife = "";
		chatComment = "";
		chatUser = "";
		chatDate = "";
		userProfile = "";
		userAddr = "";
		
		areaName = "";	//지역이름
		subAreaName = ""; //부지역이름
		
		startRow = 0;			// 시작 rownum
		endRow = 0;			// 끝 rownum
		
		searchType = "";      // 검색타입(1:이름, 2:제목, 3:내용)
		searchValue = "";      // 검색
	}


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public String getUserClass() {
		return userClass;
	}


	public void setUserClass(String userClass) {
		this.userClass = userClass;
	}


	public String getAreaNum() {
		return areaNum;
	}


	public void setAreaNum(String areaNum) {
		this.areaNum = areaNum;
	}


	public String getSubAreaNum() {
		return subAreaNum;
	}


	public void setSubAreaNum(String subAreaNum) {
		this.subAreaNum = subAreaNum;
	}


	public String getUserPwd() {
		return userPwd;
	}


	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getUserEmail() {
		return userEmail;
	}


	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}


	public String getUserGender() {
		return userGender;
	}


	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public String getRegDate() {
		return regDate;
	}


	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}


	public String getUserBirth() {
		return userBirth;
	}


	public void setUserBirth(String userBirth) {
		this.userBirth = userBirth;
	}


	public String getUserCompany() {
		return userCompany;
	}


	public void setUserCompany(String userCompany) {
		this.userCompany = userCompany;
	}


	public String getUserSchool() {
		return userSchool;
	}


	public void setUserSchool(String userSchool) {
		this.userSchool = userSchool;
	}


	public String getUsrLife() {
		return usrLife;
	}


	public void setUsrLife(String usrLife) {
		this.usrLife = usrLife;
	}


	public String getChatComment() {
		return chatComment;
	}


	public void setChatComment(String chatComment) {
		this.chatComment = chatComment;
	}


	public String getChatUser() {
		return chatUser;
	}


	public void setChatUser(String chatUser) {
		this.chatUser = chatUser;
	}


	public String getChatDate() {
		return chatDate;
	}


	public void setChatDate(String chatDate) {
		this.chatDate = chatDate;
	}


	public String getUserProfile() {
		return userProfile;
	}


	public void setUserProfile(String userProfile) {
		this.userProfile = userProfile;
	}


	public String getUserAddr() {
		return userAddr;
	}


	public void setUserAddr(String userAddr) {
		this.userAddr = userAddr;
	}


	public String getAreaName() {
		return areaName;
	}


	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}


	public String getSubAreaName() {
		return subAreaName;
	}


	public void setSubAreaName(String subAreaName) {
		this.subAreaName = subAreaName;
	}


	public long getStartRow() {
		return startRow;
	}


	public void setStartRow(long startRow) {
		this.startRow = startRow;
	}


	public long getEndRow() {
		return endRow;
	}


	public void setEndRow(long endRow) {
		this.endRow = endRow;
	}


	public String getSearchType() {
		return searchType;
	}


	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}


	public String getSearchValue() {
		return searchValue;
	}


	public void setSearchValue(String searchValue) {
		this.searchValue = searchValue;
	}

	
}
