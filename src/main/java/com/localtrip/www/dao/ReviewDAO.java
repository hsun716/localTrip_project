package com.localtrip.www.dao;

import javax.sql.DataSource;

public class ReviewDAO {
	private static ReviewDAO reviewDAO = new ReviewDAO();
	private int sizeOfPage = 10;
	private String CONNECTION_POOL_RESOURCE_NAME = "jdbc/local_trip";
	private final String REVIEW_TABLE_NAME = "review";
	private final String MEMBER_TABLE_NAME = "member";
	private DataSource dataSource;
	private final String GET_REVIEW_DTO_SQL = "SELECT m.*, r.* FROM " + REVIEW_TABLE_NAME + " r, " + MEMBER_TABLE_NAME + " m" + " WHERE r.no = ? AND m.id = ?";
	private final String SELECT_ALL_REVIEW_SQL = "SELECT * FROM " + REVIEW_TABLE_NAME + " order by no DESC LIMIT ?, ?";
	private final String INSERT_BOARD_SQL = 
			"INSERT INTO " + REVIEW_TABLE_NAME + " (ID, TITLE, CONTENTS, GROUPNUM) values(?, ?, ?, ?)";
	private final String GET_CURRENT_NUM_SQL = "SELECT MAX(no) from " + REVIEW_TABLE_NAME;
	private final String INCREASE_HIT_SQL = 
			"UPDATE " + REVIEW_TABLE_NAME + " SET HIT=HIT+1 WHERE no=?";
	private final String UPDATE_BOARD_SQL = 
			"UPDATE " + REVIEW_TABLE_NAME + " SET CONTENTS=?, WTIME=NOW() WHERE no=?";
	private final String UPDATE_STEP_NUM_SQL = 
			"UPDATE " + REVIEW_TABLE_NAME + " SET STEPNUM=STEPNUM+1 WHERE GROUPNUM=? AND STEPNUM>=?";
	private final String INSERT_REPLY_SQL = 
			"INSERT INTO " + REVIEW_TABLE_NAME + " (ID, TITLE, CONTENTS, GROUPNUM, STEPNUM, INDENTNUM) values(?, ?, ?, ?, ?, ?)";
	private final String DELETE_SQL =
			"DELETE FROM " + REVIEW_TABLE_NAME + " WHERE no=?";
	private final String SEARCH_BOARD_SQL_BY_ID = "SELECT * FROM " + REVIEW_TABLE_NAME + " WHERE ID LIKE ? order by GROUPNUM DESC, STEPNUM ASC";
	private final String SEARCH_BOARD_SQL_BY_TITLE = "SELECT * FROM " + REVIEW_TABLE_NAME + " WHERE TITLE LIKE ? order by GROUPNUM DESC, STEPNUM ASC";
	private final String SEARCH_BOARD_SQL_BY_TITLE_AND_CONTENTS = "SELECT * FROM " + REVIEW_TABLE_NAME + " WHERE TITLE LIKE ? OR CONTENTS LIKE ? order by GROUPNUM DESC, STEPNUM ASC";
	private final String SELECT_COUNT_OF_LIST = "SELECT COUNT(*) FROM " + REVIEW_TABLE_NAME;
}
