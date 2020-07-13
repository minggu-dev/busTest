package sample.test.mino.dao;

import java.util.List;

import sample.test.mino.vo.BoardVO;

public interface BoardDAO {
	List<BoardVO> selectBoardList() throws Exception;
}
