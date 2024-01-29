package com.example.gongHome.inquiry.mapper;

import com.example.gongHome.inquiry.dto.InquiryDto;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface InquiryMapper {
    List<InquiryDto> getInquiryList();

    void insertInquiry(InquiryDto inquiryDto);
    InquiryDto getInquiry(int id);

    void updateInquiry(InquiryDto inquiryDto);

    void deleteInquiry(String id);
}
