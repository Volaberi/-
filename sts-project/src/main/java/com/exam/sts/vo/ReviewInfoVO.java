package com.exam.sts.vo;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class ReviewInfoVO {

	private MultipartFile rbiFile;
	private int rbiNum;
	private String rbiTitle;
	private String rbiContent;
	private String rbiFilePath;
	private String rbiCredat;
	private String uiName;
	private int rbiCnt;
	private int uiNum;
	private int page = 1; // 1page 를 default값으로 해주기 위해서
	private int rows = 10;
	public MultipartFile getRbiFile() {
		return rbiFile;
	}
	public void setRbiFile(MultipartFile rbiFile) {
		this.rbiFile = rbiFile;
	}
	public int getRbiNum() {
		return rbiNum;
	}
	public void setRbiNum(int rbiNum) {
		this.rbiNum = rbiNum;
	}
	public String getRbiTitle() {
		return rbiTitle;
	}
	public void setRbiTitle(String rbiTitle) {
		this.rbiTitle = rbiTitle;
	}
	public String getRbiContent() {
		return rbiContent;
	}
	public void setRbiContent(String rbiContent) {
		this.rbiContent = rbiContent;
	}
	public String getRbiFilePath() {
		return rbiFilePath;
	}
	public void setRbiFilePath(String rbiFilePath) {
		this.rbiFilePath = rbiFilePath;
	}
	public String getRbiCredat() {
		return rbiCredat;
	}
	public void setRbiCredat(String rbiCredat) {
		this.rbiCredat = rbiCredat;
	}
	public String getUiName() {
		return uiName;
	}
	public void setUiName(String uiName) {
		this.uiName = uiName;
	}
	public int getRbiCnt() {
		return rbiCnt;
	}
	public void setRbiCnt(int rbiCnt) {
		this.rbiCnt = rbiCnt;
	}
	public int getUiNum() {
		return uiNum;
	}
	public void setUiNum(int uiNum) {
		this.uiNum = uiNum;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getRows() {
		return rows;
	}
	public void setRows(int rows) {
		this.rows = rows;
	}
	
}