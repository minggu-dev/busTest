package sample.test.mino.service;

import java.util.List;

import sample.test.mino.vo.BoardVO;

public interface BoardService {
	List<BoardVO> selectBoardList() throws Exception;
}
