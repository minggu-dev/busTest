package sample.test.mino.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import sample.test.mino.vo.BusVO;

@Repository
public class BusDaoImpl implements BusDao {
	@Inject
    private SqlSession sqlSession;
    
    private static final String Namespace = "sample.test.mapper.busMapper";
    
	@Override
	public List<BusVO> selectAllBus(Integer page) {
		return sqlSession.selectList(Namespace + ".selectBusList", page);
	}

}
