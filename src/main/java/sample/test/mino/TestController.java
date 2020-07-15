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

@Controller
public class TestController {
	@Autowired
	private BusService service;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String index() {
		return "home";
	}
	
	@ResponseBody
	@RequestMapping("test")
	public Map<String,List<BusVO>> test(Model model, Integer currentPage) throws Exception {
		List<BusVO> list = service.selectAllBus(currentPage);
		System.out.println(currentPage);
		System.out.println(list); 
		Map<String, List<BusVO>> map = new HashMap<String, List<BusVO>>();
		map.put("data", list);
		return map;
	}
}
