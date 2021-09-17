/**
 * <pre>
 * 프로젝트명 : HiBoard
 * 패키지명   : com.icia.web.dao
 * 파일명     : UserDao.java
 * 작성일     : 2021. 1. 19.
 * 작성자     : daekk
 * </pre>
 */
package com.icia.chaming.dao;

import org.springframework.stereotype.Repository;

import com.icia.chaming.model.User;

/**
 * <pre>
 * 패키지명   : com.icia.web.dao
 * 파일명     : UserDao.java
 * 작성일     : 2021. 1. 19.
 * 작성자     : daekk
 * 설명       : 사용자 DAO
 * </pre>
 */
@Repository("userDao")
public interface UserDao
{
public int userInsert(User user);
	
	public int userUpdate(User user);
	
//	public int userStatusUpdate(User user);
	
	public User userSelect(String userId);
	
	public User userAreaSelect(String userId);
}
