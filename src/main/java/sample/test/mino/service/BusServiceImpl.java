package sample.test.mino.service;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import sample.test.mino.dao.BusDao;
import sample.test.mino.vo.BusDTO;
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
	public int updateBus(BusVO bus) {
		return dao.updateBus(bus);
	}
	
	@Override
	public void down2020(HttpServletResponse response) {
		Workbook wb = null;
		List<BusVO> list = dao.select2020bus100();
		
		try {
			wb = new HSSFWorkbook();
			
			Sheet sheet = wb.createSheet("2020버스 데이터");
			
			Row row = null;
			Cell cell = null;
			int rowNo = 0;
			
			row = sheet.createRow(rowNo++);
			cell = row.createCell(0);
			cell.setCellValue("busym");
			cell = row.createCell(1);
			cell.setCellValue("routeid");
			cell = row.createCell(2);
			cell.setCellValue("routeno");
			cell = row.createCell(3);
			cell.setCellValue("routename");
			cell = row.createCell(4);
			cell.setCellValue("busstopid");
			cell = row.createCell(5);
			cell.setCellValue("busstopars");
			cell = row.createCell(6);
			cell.setCellValue("busstopname");
			cell = row.createCell(7);
			cell.setCellValue("bus00on");
			cell = row.createCell(8);
			cell.setCellValue("bus00off");
			cell = row.createCell(9);
			cell.setCellValue("bus01on");
			cell = row.createCell(10);
			cell.setCellValue("bus01off");
			cell = row.createCell(11);
			cell.setCellValue("bus02on");
			cell = row.createCell(12);
			cell.setCellValue("bus02off");
			cell = row.createCell(13);
			cell.setCellValue("bus03on");
			cell = row.createCell(14);
			cell.setCellValue("bus03off");
			cell = row.createCell(15);
			cell.setCellValue("bus04on");
			cell = row.createCell(16);
			cell.setCellValue("bus04off");
			cell = row.createCell(17);
			cell.setCellValue("bus05on");
			cell = row.createCell(18);
			cell.setCellValue("bus05off");
			cell = row.createCell(19);
			cell.setCellValue("bus06on");
			cell = row.createCell(20);
			cell.setCellValue("bus06off");
			cell = row.createCell(21);
			cell.setCellValue("bus07on");
			cell = row.createCell(22);
			cell.setCellValue("bus07off");
			cell = row.createCell(23);
			cell.setCellValue("bus08on");
			cell = row.createCell(24);
			cell.setCellValue("bus08off");
			cell = row.createCell(25);
			cell.setCellValue("bus09on");
			cell = row.createCell(26);
			cell.setCellValue("bus09off");
			cell = row.createCell(27);
			cell.setCellValue("bus10on");
			cell = row.createCell(28);
			cell.setCellValue("bus10off");
			cell = row.createCell(29);
			cell.setCellValue("bus11on");
			cell = row.createCell(30);
			cell.setCellValue("bus11off");
			cell = row.createCell(31);
			cell.setCellValue("bus12on");
			cell = row.createCell(32);
			cell.setCellValue("bus12off");
			cell = row.createCell(33);
			cell.setCellValue("bus13on");
			cell = row.createCell(34);
			cell.setCellValue("bus13off");
			cell = row.createCell(35);
			cell.setCellValue("bus14on");
			cell = row.createCell(36);
			cell.setCellValue("bus14off");
			cell = row.createCell(37);
			cell.setCellValue("bus15on");
			cell = row.createCell(38);
			cell.setCellValue("bus15off");
			cell = row.createCell(39);
			cell.setCellValue("bus16on");
			cell = row.createCell(40);
			cell.setCellValue("bus16off");
			cell = row.createCell(41);
			cell.setCellValue("bus17on");
			cell = row.createCell(42);
			cell.setCellValue("bus17off");
			cell = row.createCell(43);
			cell.setCellValue("bus18on");
			cell = row.createCell(44);
			cell.setCellValue("bus18off");
			cell = row.createCell(45);
			cell.setCellValue("bus19on");
			cell = row.createCell(46);
			cell.setCellValue("bus19off");
			cell = row.createCell(47);
			cell.setCellValue("bus20on");
			cell = row.createCell(48);
			cell.setCellValue("bus20off");
			cell = row.createCell(49);
			cell.setCellValue("bus21on");
			cell = row.createCell(50);
			cell.setCellValue("bus21off");
			cell = row.createCell(51);
			cell.setCellValue("bus22on");
			cell = row.createCell(52);
			cell.setCellValue("bus22off");
			cell = row.createCell(53);
			cell.setCellValue("bus23on");
			cell = row.createCell(54);
			cell.setCellValue("bus23off");
			cell = row.createCell(55);
			cell.setCellValue("postdate");
			cell = row.createCell(56);
			cell.setCellValue("bid");
			
			for(BusVO bus : list) {
				row = sheet.createRow(rowNo++);
				cell = row.createCell(0);
				cell.setCellValue(bus.getBUSYM());
				cell = row.createCell(1);
				cell.setCellValue(bus.getROUTEID());
				cell = row.createCell(2);
				cell.setCellValue(bus.getROUTENO());
				cell = row.createCell(3);
				cell.setCellValue(bus.getROUTENAME());
				cell = row.createCell(4);
				cell.setCellValue(bus.getBUSSTOPID());
				cell = row.createCell(5);
				cell.setCellValue(bus.getBUSSTOPARS());
				cell = row.createCell(6);
				cell.setCellValue(bus.getBUSSTOPNAME());
				cell = row.createCell(7);
				cell.setCellValue(bus.getBUS00ON());
				cell = row.createCell(8);
				cell.setCellValue(bus.getBUS00OFF());
				cell = row.createCell(9);
				cell.setCellValue(bus.getBUS01ON());
				cell = row.createCell(10);
				cell.setCellValue(bus.getBUS01OFF());
				cell = row.createCell(11);
				cell.setCellValue(bus.getBUS02ON());
				cell = row.createCell(12);
				cell.setCellValue(bus.getBUS02OFF());
				cell = row.createCell(13);
				cell.setCellValue(bus.getBUS03ON());
				cell = row.createCell(14);
				cell.setCellValue(bus.getBUS03OFF());
				cell = row.createCell(15);
				cell.setCellValue(bus.getBUS04ON());
				cell = row.createCell(16);
				cell.setCellValue(bus.getBUS04OFF());
				cell = row.createCell(17);
				cell.setCellValue(bus.getBUS05ON());
				cell = row.createCell(18);
				cell.setCellValue(bus.getBUS05OFF());
				cell = row.createCell(19);
				cell.setCellValue(bus.getBUS06ON());
				cell = row.createCell(20);
				cell.setCellValue(bus.getBUS06OFF());
				cell = row.createCell(21);
				cell.setCellValue(bus.getBUS07ON());
				cell = row.createCell(22);
				cell.setCellValue(bus.getBUS07OFF());
				cell = row.createCell(23);
				cell.setCellValue(bus.getBUS08ON());
				cell = row.createCell(24);
				cell.setCellValue(bus.getBUS08OFF());
				cell = row.createCell(25);
				cell.setCellValue(bus.getBUS09ON());
				cell = row.createCell(26);
				cell.setCellValue(bus.getBUS09OFF());
				cell = row.createCell(27);
				cell.setCellValue(bus.getBUS10ON());
				cell = row.createCell(28);
				cell.setCellValue(bus.getBUS10OFF());
				cell = row.createCell(29);
				cell.setCellValue(bus.getBUS11ON());
				cell = row.createCell(30);
				cell.setCellValue(bus.getBUS11OFF());
				cell = row.createCell(31);
				cell.setCellValue(bus.getBUS12ON());
				cell = row.createCell(32);
				cell.setCellValue(bus.getBUS12OFF());
				cell = row.createCell(33);
				cell.setCellValue(bus.getBUS13ON());
				cell = row.createCell(34);
				cell.setCellValue(bus.getBUS13OFF());
				cell = row.createCell(35);
				cell.setCellValue(bus.getBUS14ON());
				cell = row.createCell(36);
				cell.setCellValue(bus.getBUS14OFF());
				cell = row.createCell(37);
				cell.setCellValue(bus.getBUS15ON());
				cell = row.createCell(38);
				cell.setCellValue(bus.getBUS15OFF());
				cell = row.createCell(39);
				cell.setCellValue(bus.getBUS16ON());
				cell = row.createCell(40);
				cell.setCellValue(bus.getBUS16OFF());
				cell = row.createCell(41);
				cell.setCellValue(bus.getBUS17ON());
				cell = row.createCell(42);
				cell.setCellValue(bus.getBUS17OFF());
				cell = row.createCell(43);
				cell.setCellValue(bus.getBUS18ON());
				cell = row.createCell(44);
				cell.setCellValue(bus.getBUS18OFF());
				cell = row.createCell(45);
				cell.setCellValue(bus.getBUS19ON());
				cell = row.createCell(46);
				cell.setCellValue(bus.getBUS19OFF());
				cell = row.createCell(47);
				cell.setCellValue(bus.getBUS20ON());
				cell = row.createCell(48);
				cell.setCellValue(bus.getBUS20OFF());
				cell = row.createCell(49);
				cell.setCellValue(bus.getBUS21ON());
				cell = row.createCell(50);
				cell.setCellValue(bus.getBUS21OFF());
				cell = row.createCell(51);
				cell.setCellValue(bus.getBUS22ON());
				cell = row.createCell(52);
				cell.setCellValue(bus.getBUS22OFF());
				cell = row.createCell(53);
				cell.setCellValue(bus.getBUS23ON());
				cell = row.createCell(54);
				cell.setCellValue(bus.getBUS23OFF());
				cell = row.createCell(55);
				cell.setCellValue(bus.getPOSTDATE());
				cell = row.createCell(56);
				cell.setCellValue(bus.getBID());
			}

			response.setContentType("ms-vnd/excel");
			response.setHeader("Content-Disposition", "attachment;filename=test.xls");
			wb.write(response.getOutputStream());
			wb.close();
		}catch (Exception e) {}
	}
	
	@Transactional
	@Override
	public void insertBus(BusDTO[] busArr) {
		for(BusDTO bus : busArr) {
			dao.insertBus(bus);
		}
	}
}
