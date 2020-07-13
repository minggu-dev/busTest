package sample.test.mino.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import sample.test.mino.vo.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO {
	@Inject
    private SqlSession sqlSession;
    
    private static final String Namespace = "sample.test.mapper.boardMapper";
    
	@Override
	public List<BoardVO> selectBoardList() throws Exception {
		return sqlSession.selectList(Namespace + ".selectBoardList");
	}

}
