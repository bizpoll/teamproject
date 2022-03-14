package kr.co.guide.travel.domain;

import lombok.Data;

@Data
public class ScheduleDetailDTO {
	private int schedule_day;
	private int schedule_order;
	private int schedule_no;
	private int tour_no;
}
