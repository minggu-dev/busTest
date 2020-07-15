package sample.test.mino.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sample.test.mino.dao.BusDao;
import sample.test.mino.vo.BusVO;

@Service
public class BusServiceImpl implements BusService {
	@Autowired
	private BusDao dao;
	
	@Override
	public List<BusVO> selectAllBus(Integer page) {
		return dao.selectAllBus(page);
	}

	@Override
	public List<BusVO> select2020AllBus(Integer page, Integer start) {
		return dao.select2020Allbus(page, start);
	}

}
