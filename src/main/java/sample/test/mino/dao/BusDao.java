package sample.test.mino.dao;

import java.util.List;

import sample.test.mino.vo.BusVO;

public interface BusDao {
	List<BusVO> selectAllBus(Integer page);
}
