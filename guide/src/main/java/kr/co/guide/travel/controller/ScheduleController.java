package kr.co.guide.travel.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.guide.travel.domain.AreaDTO;
import kr.co.guide.travel.service.AreaService;

@Controller
@RequestMapping("/travel")
public class ScheduleController {
   private static final Logger logger = LoggerFactory.getLogger(ScheduleController.class);
   
   @Autowired
   private AreaService service;
   
   @GetMapping("/schedule")
   public void scheduling(AreaDTO aDto, Model model) throws Exception {
      logger.info("schedule get...........");
      model.addAttribute("tour", service.tourList(aDto));
   }
}