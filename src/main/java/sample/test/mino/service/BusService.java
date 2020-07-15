package sample.test.mino.service;

import java.util.List;

import sample.test.mino.vo.BusVO;

public interface BusService {
	List<BusVO> selectAllBus(Integer page);
}
