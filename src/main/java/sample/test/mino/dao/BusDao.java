package sample.test.mino.dao;

import java.util.List;

import sample.test.mino.vo.BusDTO;
import sample.test.mino.vo.BusVO;
import sample.test.mino.vo.PageVO;

public interface BusDao {
	List<BusVO> selectAllBus(PageVO page);
	int totalCount();
	List<BusVO> select2020Allbus(Integer page, Integer start);
	BusVO selectpre2020busDeatil(Integer id);
	BusVO selectBus(int bid);
	int updateBus(BusVO bus);
	List<BusVO> select2020bus100();
	int insertBus(BusDTO bus);
}
