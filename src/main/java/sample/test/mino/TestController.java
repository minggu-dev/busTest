package sample.test.mino;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import sample.test.mino.service.BusService;
import sample.test.mino.vo.BusVO;
import sample.test.mino.vo.PageVO;

@Controller
public class TestController {
	@Autowired
	private BusService service;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String index() {
		return "home";
	}
	
	@RequestMapping(value="/pre2020", method=RequestMethod.GET)
	public String preindex() {
		return "pre2020";
	}
	
	@ResponseBody
	@RequestMapping("test")
	public Map<String,Object> test(Model model, PageVO page) throws Exception {
		List<BusVO> list = service.selectAllBus(page);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("data", list);
		map.put("recordsTotal",service.totalCount());
		map.put("recordsFiltered", service.totalCount());
		return map;
	}
}
