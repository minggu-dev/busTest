package sample.test.mino.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import sample.test.mino.dao.BoardDAO;
import sample.test.mino.vo.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
    private BoardDAO boardMapper;

    @Override
    @Transactional
    public List<BoardVO> selectBoardList() throws Exception {
        return boardMapper.selectBoardList();
    }
}
