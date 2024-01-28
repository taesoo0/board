package com.example.gongHome.inquiry.controller;

import com.example.gongHome.inquiry.dto.InquiryDto;
import com.example.gongHome.inquiry.service.InquiryService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@RestController
@RequestMapping("inquiry")
@Slf4j
public class InquiryController {
    @Autowired
    InquiryService inquiryService;

    @GetMapping("")
    public ModelAndView inquiry () {
        ModelAndView mv = new ModelAndView("inquiry");

        return mv;
    }

    @GetMapping("insertForm")
    public ModelAndView insertForm(){
        ModelAndView mv = new ModelAndView("insertInquiry");

        return mv;
    }

    @PostMapping("insertInquiry")
    public ModelAndView insertInquiry(InquiryDto inquiryDto){
        String result = inquiryService.insertInquiry(inquiryDto);
        log.info("insert data  = " + result);
        ModelAndView mv = new ModelAndView("redirect:/inquiry");

        return mv;
    }

    @GetMapping("/getInquiryList")
    public List<InquiryDto> getInquiryList () {
        List<InquiryDto> inquiryDtoList = inquiryService.getInquiryList();
        return inquiryDtoList;
    }
}
