package com.reqman.vo;

import java.util.Date;
import java.util.List;

import org.primefaces.model.UploadedFile;




public class ResponseVo{
	
	
	
	private Integer newRequestId;
	private String stage;
	private String title;
	private String description;
	private String usercategory;
	private String userproject;
	private String userrequesttype;
	//private StreamedContent attachment;
	private Date completiondate;
	private String status;
	private String friendName;
	private byte[] file;
	private String fileName;
	private UploadedFile attachment;
	private Float completionpercentage;
	private String createdby;
	
	private List<requestNoteVo> noteList;
	private Date createdate;
	private String changedate;
	private Integer serialid;
	private String actualeffort;
	private String estimatedeffort;
	private String priority;
	private Integer weightage;
	private Integer teammembernotescount;
	private Integer attachmentstatus;
	
	
	
	

	public Integer getSerialid() {
		return serialid;
	}

	public void setSerialid(Integer serialid) {
		this.serialid = serialid;
	}

	public Integer getAttachmentstatus() {
		return attachmentstatus;
	}

	public void setAttachmentstatus(Integer attachmentstatus) {
		this.attachmentstatus = attachmentstatus;
	}

	public Integer getTeammembernotescount() {
		return teammembernotescount;
	}

	public void setTeammembernotescount(Integer teammembernotescount) {
		this.teammembernotescount = teammembernotescount;
	}

	public String getActualeffort() {
		return actualeffort;
	}

	public void setActualeffort(String actualeffort) {
		this.actualeffort = actualeffort;
	}

	public String getEstimatedeffort() {
		return estimatedeffort;
	}

	public void setEstimatedeffort(String estimatedeffort) {
		this.estimatedeffort = estimatedeffort;
	}

	public String getPriority() {
		return priority;
	}

	public void setPriority(String priority) {
		this.priority = priority;
	}

	public Integer getWeightage() {
		return weightage;
	}

	public void setWeightage(Integer weightage) {
		this.weightage = weightage;
	}

	public Date getCreatedate() {
		return createdate;
	}

	public void setCreatedate(Date createdate) {
		this.createdate = createdate;
	}

	public List<requestNoteVo> getNoteList() {
		return noteList;
	}

	public void setNoteList(List<requestNoteVo> noteList) {
		this.noteList = noteList;
	}

	public String getStage() {
		return stage;
	}

	public void setStage(String stage) {
		this.stage = stage;
	}

	public String getCreatedby() {
		return createdby;
	}

	public void setCreatedby(String createdby) {
		this.createdby = createdby;
	}

	
	public Integer getNewRequestId() {
		return newRequestId;
	}

	public void setNewRequestId(Integer newRequestId) {
		this.newRequestId = newRequestId;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public byte[] getFile() {
		return file;
	}

	public void setFile(byte[] file) {
		this.file = file;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public UploadedFile getAttachment() {
		return attachment;
	}

	public void setAttachment(UploadedFile attachment) {
		this.attachment = attachment;
	}

	public Float getCompletionpercentage() {
		return completionpercentage;
	}

	public void setCompletionpercentage(Float completionpercentage) {
		this.completionpercentage = completionpercentage;
	}

	

	public String getChangedate() {
		return changedate;
	}

	public void setChangedate(String changedate) {
		this.changedate = changedate;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getUsercategory() {
		return usercategory;
	}

	public void setUsercategory(String usercategory) {
		this.usercategory = usercategory;
	}

	public String getUserproject() {
		return userproject;
	}

	public void setUserproject(String userproject) {
		this.userproject = userproject;
	}

	public String getUserrequesttype() {
		return userrequesttype;
	}

	public void setUserrequesttype(String userrequesttype) {
		this.userrequesttype = userrequesttype;
	}

	

	public Date getCompletiondate() {
		return completiondate;
	}

	public void setCompletiondate(Date completiondate) {
		this.completiondate = completiondate;
	}

	public String getFriendName() {
		return friendName;
	}

	public void setFriendName(String friendName) {
		this.friendName = friendName;
	}
	



}
