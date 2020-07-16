package sample.test.mino.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sample.test.mino.dao.BusDao;
import sample.test.mino.vo.BusVO;
import sample.test.mino.vo.PageVO;

@Service
public class BusServiceImpl implements BusService {
	@Autowired
	private BusDao dao;
	
	@Override
	public List<BusVO> selectAllBus(PageVO page) {
		return dao.selectAllBus(page);
	}
	
	@Override
	public int totalCount() {
		return dao.totalCount();
	}

	@Override
	public List<BusVO> select2020AllBus(Integer page, Integer start) {
		return dao.select2020Allbus(page, start);
	}

	@Override
	public BusVO select2020prevBusDetail(Integer id) {
		return dao.selectpre2020busDeatil(id);
	}

	public BusVO selectBus(int bid) {
		return dao.selectBus(bid);
	}

	@Override
	public int update2020prevBusDetail(Integer id, BusVO bus) {
		return dao.update2020prevBusDetail(id, bus);
	}
	
	@Override
	public int updateBus(BusVO bus) {
		return dao.updateBus(bus);
	}
}
