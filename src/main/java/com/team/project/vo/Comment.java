package com.team.project.vo;

import lombok.Data;

@Data
public class Comment {
	
	private int commentNum;
	private int boardNum;
	private String memberId;
	private String commentName;
	private String commentId;
	private String commentView;
	private String commentLocation;
	private String commentSecret;
	private String commentDeleted;
	
}
