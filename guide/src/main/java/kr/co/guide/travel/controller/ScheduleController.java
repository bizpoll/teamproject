package kr.co.guide.travel.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.guide.travel.domain.ScheduleDTO;
import kr.co.guide.travel.domain.ScheduleDetailDTO;
import kr.co.guide.travel.service.AreaService;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/travel")
@Log4j
public class ScheduleController {
	private static final Logger logger = LoggerFactory.getLogger(ScheduleController.class);
	
	@Autowired
	private AreaService service;
	
	@GetMapping("/schedule")
	public void scheduling(Model model) throws Exception {
		logger.info("schedule get...........");
		model.addAttribute("tour", service.tourList());
		
	}

	@CrossOrigin
	@GetMapping(value = "/new", consumes = "application/json", produces = {MediaType.TEXT_PLAIN_VALUE})
	public void create(@RequestBody ScheduleDTO sDto, @RequestBody ScheduleDetailDTO sdDto) throws Exception {
		log.info("Schedule create : " + sDto);
		service.scheduleinsert(sDto, sdDto);
	}
}
