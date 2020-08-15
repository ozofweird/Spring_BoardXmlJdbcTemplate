package com.springbook.biz.user.impl;

import org.springframework.jdbc.core.JdbcTemplate;

import com.springbook.biz.user.UserVO;

public class UserDAO {
		
	// SQL ��ɾ�
	private final String USER_GET = "select * from users where id=? and password=?";
	
	private JdbcTemplate jdbcTemplate;
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	// CRUD ����� �޼��� ����
	// �α���
	public UserVO getUser(UserVO vo) {
		System.out.println("===> JDBC�� getUser() ��� ó��");
		Object[] args = {vo.getId(), vo.getPassword()};
		return jdbcTemplate.queryForObject(
				USER_GET, args, new UserRowMapper());
	}
}