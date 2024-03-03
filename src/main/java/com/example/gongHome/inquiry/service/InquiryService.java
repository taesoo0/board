package com.example.gongHome.inquiry.service;

import com.example.gongHome.inquiry.dto.InquiryDto;
import com.example.gongHome.inquiry.mapper.InquiryMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class InquiryService {
    @Autowired
    InquiryMapper inquiryMapper;

    public List<InquiryDto> getInquiryList () {
        List<InquiryDto> inquiryDtoList = inquiryMapper.getInquiryList();
        return inquiryDtoList;
    }

    public String setInquiry(InquiryDto inquiryDto) {
        try {
            inquiryMapper.insertInquiry(inquiryDto);
        }catch (Exception e){
            e.printStackTrace();
            return "fail";
        }
        return "success";
    }
}
