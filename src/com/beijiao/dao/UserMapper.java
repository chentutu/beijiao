/**
 * 
 */
package com.beijiao.dao;



import java.util.List;
import java.util.Map;

import com.beijiao.model.User;

/**
 * @author cmy
 *����2:52:29
 */
public interface UserMapper {
	
	/**
	 * ����Ƿ���ڴ��û�
	 */
	public User checkUser(Map map);
	/*
	 * �û�ע��
	 */
	public int userResigster(User user);
	
	/*
	 * �����޸�
	 */
   public String selectPawd(int userId);
   public int changepswd(int userId,String password,String oldPassword);
   public List<User> getAllUser(Map map);
   public int getRecordCount();
   public User getUser(int userId);
   public int changeFocus(int userId,String pClassName);

}
