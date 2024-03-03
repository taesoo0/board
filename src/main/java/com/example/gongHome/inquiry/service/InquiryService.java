package com.example.gongHome.inquiry.service;

import com.example.gongHome.inquiry.dto.InquiryDto;
import com.example.gongHome.inquiry.mapper.InquiryMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
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

    public String insertInquiry(InquiryDto inquiryDto) {
        try {
            inquiryMapper.insertInquiry(inquiryDto);
            return "Success";
        } catch (Exception e) {
            log.info(e.getMessage());
            return "fail";
        }
    }
    public InquiryDto getInquiry(int id) {
        InquiryDto inquiryDto = inquiryMapper.getInquiry(id);
        return inquiryDto;
    }
    public void updateInquiry(InquiryDto inquiryDto) {
        inquiryMapper.updateInquiry(inquiryDto);
    }

    public void deleteInquiry(String id) {
        inquiryMapper.deleteInquiry(id);
    }
}
