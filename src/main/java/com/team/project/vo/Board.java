package com.team.project.vo;

import java.util.Date;

import lombok.Data;

@Data
public class Board {
	
	private int boardNum;
	private String memberId;
	private String boardDelted;
	private String boardType;
	private Date boardDate;
	private String boardTitle;
	private String boardView;
	private String boardLocation;
	
}
