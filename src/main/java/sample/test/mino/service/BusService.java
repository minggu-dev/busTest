package sample.test.mino.service;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import sample.test.mino.vo.BusDTO;
import sample.test.mino.vo.BusVO;
import sample.test.mino.vo.PageVO;

public interface BusService {
	List<BusVO> selectAllBus(PageVO page);
	int totalCount();
	List<BusVO> select2020AllBus(Integer page, Integer start);
	BusVO select2020prevBusDetail(Integer id);
	BusVO selectBus(int bid);
	int updateBus(BusVO bus);
	void down2020(HttpServletResponse response);
	void insertBus(BusDTO[] busArr);
}
