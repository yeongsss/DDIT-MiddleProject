package ddit.service;

import java.util.List;

import ddit.vo.BoardCommentVO;

public interface IBoardCommentService {
	/**
	 * 
	 * @param commentVO	=> 댓글 등록에 필요한 VO
	 * @return 등록 성공 : 1 , 실패 : 0
	 */
	public int insertBoardComment(BoardCommentVO comVO);
	
	
	/**
	 * 
	 * @param comVO	=> 댓글 수정할 내용 
	 * @return
	 */
	public int updateBoardComment(String comContent);
	
	/**
	 * 
	 * @param comm_no => 삭제할 댓글 번호
	 * @return
	 */
	public int deleteBoardComment(BoardCommentVO comVO);
	
	/**
	 *  해당 게시판 번호에 달린 댓글목록 보기
	 * @param board_no	=> 게시판번호  
	 * @return
	 */
	public List<BoardCommentVO> getBoardList(int board_no);
	
	/**
	 * 댓글 작성자 찾는 메소드
	 * @param comVO
	 * @return
	 */
	public int boardWriter(BoardCommentVO comVO);
	
}
