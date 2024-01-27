package com.example.gongHome.inquiry.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class InquiryDto {
    public long id;
    public String title;
    public String contents;
    public long memberId;
    public String createTime;
    public String updateTime;
    public String deleteYn;
}
