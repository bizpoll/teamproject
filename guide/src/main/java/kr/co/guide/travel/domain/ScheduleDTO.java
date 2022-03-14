package kr.co.guide.travel.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ScheduleDTO {
	private int schedule_no;
	private String schedule_title;
	private Date schedule_regist_date;
	private Date schedule_start;
	private Date schedule_end;
	private String schedule_recommend;
	private int schedule_viewcount;
	private String member_id;
}
