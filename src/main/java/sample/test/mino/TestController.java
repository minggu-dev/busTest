package sample.test.mino;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import sample.test.mino.service.BusService;
import sample.test.mino.vo.BusDTO;
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
	
	@RequestMapping(value="/pre2020/{id}")
	public String prebusDetail(Model model, @PathVariable Integer id) {
		BusVO bus = service.select2020prevBusDetail(id);
		model.addAttribute("bus", bus);
		return "prebusDetail";
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
	
	@ResponseBody
	@RequestMapping("test123")
	public Map<String,List<BusVO>> test123(Model model, Integer length, Integer start) throws Exception {
		System.out.println("length: "+length);
		System.out.println("start: "+start);
		List<BusVO> list = service.select2020AllBus(length, start);
		Map<String, List<BusVO>> map = new HashMap<String, List<BusVO>>();
		map.put("data", list);
		return map;
	}
	
	@RequestMapping("detail2020/{bid}")
	public String detail2020(@PathVariable int bid, Model model) {
		BusVO bus = service.selectBus(bid);
		model.addAttribute("bus", bus);
		return "detail2020";
	}
	
	@PostMapping("busUpdate2020")
	public String update2020(BusVO bus) {
		service.updateBus(bus);
		return "redirect:/detail2020/" + bus.getBID();
	}
	
	@RequestMapping("down2020")
	public void down2020(HttpServletResponse response) {
		service.down2020(response);
	}
	
	@RequestMapping("/{url}")
	public void url() {}
	
	@PostMapping("/upload2020")
	public void upload(String jsonObj) {
		ObjectMapper mapper = new ObjectMapper();
		try {
			BusDTO[] busArr = mapper.readValue(jsonObj, BusDTO[].class);
			service.insertBus(busArr);
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
