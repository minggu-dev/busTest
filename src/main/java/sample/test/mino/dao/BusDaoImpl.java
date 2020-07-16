package sample.test.mino.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import sample.test.mino.vo.BusVO;
import sample.test.mino.vo.PageVO;

@Repository
public class BusDaoImpl implements BusDao {
	@Inject
    private SqlSession sqlSession;
    
	private static final String Namespace2020 = "sample.test.mapper.busMapper";
    private static final String Namespace = "sample.test.mapper.busPreMapper";
    
	@Override
	public List<BusVO> selectAllBus(PageVO page) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("page", page);
		return sqlSession.selectList(Namespace2020 + ".selectBusList", map);
	}
	
	@Override
	public int totalCount() {
		return sqlSession.selectOne(Namespace2020 + ".totalCount");
	}

	@Override
	public List<BusVO> select2020Allbus(Integer page, Integer start) {
		RowBounds rowBounds = new RowBounds(start, page);
		return sqlSession.selectList(Namespace + ".select2020BusList", start, rowBounds);
	}

	@Override
	public BusVO selectpre2020busDeatil(Integer id) {
		return sqlSession.selectOne(Namespace+".selectPre2020busDeatil", id);
	}
	
	@Override
	public BusVO selectBus(int bid) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("bid", bid);
		return sqlSession.selectOne(Namespace2020 + ".selectBusList", map);
	}
}
