package sample.test.mino.service;

import java.util.List;

import sample.test.mino.vo.BusVO;
import sample.test.mino.vo.PageVO;

public interface BusService {
	List<BusVO> selectAllBus(PageVO page);
	int totalCount();
	List<BusVO> select2020AllBus(Integer page, Integer start);
}
