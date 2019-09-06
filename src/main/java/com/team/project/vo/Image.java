package com.team.project.vo;

import lombok.Data;

@Data
public class Image {
	
	private int imageSeq;
	private String boardNum;
	private String memberId;
	private String imageOriginal;
	private String imageSaved;
	private String imageDeleted;
}
