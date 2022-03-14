package kr.co.guide.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.guide.admin.domain.Criteria;
import kr.co.guide.admin.domain.PageDTO;
import kr.co.guide.admin.service.ITourMGService;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/admin/tourMG")
public class TourMGController {
	
	@Autowired
	private ITourMGService service;
	
	@RequestMapping(value = "/tourList", method = RequestMethod.GET)
	public void busListAll(Criteria cri, Model model) throws Exception {
		log.info("show all Tour list ...........................................");
		
		model.addAttribute("tourMGList", service.listAllPaging(cri));
		
		
		int total = service.getTotalCnt(cri);
		log.info("total : " + total);
		
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
	
	@RequestMapping(value = "/tourListDel", method = RequestMethod.GET)		
	public String tourRemove(@RequestParam("tour_no") String tour_no, @ModelAttribute("cri") Criteria cri,
			RedirectAttributes rttr) throws Exception {
		log.info("tourListDel............................ : " + tour_no);
		service.remove(tour_no);
		return "redirect:/admin/tourMG/tourList" + cri.GetListLink();
	}
	
	@RequestMapping(value = "/tourDetail", method = RequestMethod.GET)		
	public void tourDetail(@RequestParam("tour_no") String tour_no, Model model) throws Exception {
		log.info("tourDetail............................ : " + tour_no);
		
		model.addAttribute("tourDetail", service.read(tour_no));
		
	}
	
	
	
	
}
