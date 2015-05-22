package board.dao;

import java.util.*;
import board.dto.*;

public class BoardDAO {
	public BoardDAO() {
		
	}
	
	public int insertBoard(Board board) {
		return 0;
	}
	public List<Board> selectAllBoards() {
		return null;
	}
	//게시판 상세보기
	public Board seletOnBoardByNum(int num) {
		return null;
	}
	///게시판 상세보기시 조회수 증가
	public void updateHits(int num) {
		
	}
	//게시판 게시글 번호와 일치하는 글 수정하기
	public int updateBoard(Board board) {
		return 0;
	}
	public int deleteBoard(int num) {
		return num;
	}
}
