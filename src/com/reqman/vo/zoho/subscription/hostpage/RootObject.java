package com.reqman.vo.zoho.subscription.hostpage;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;

public class RootObject implements Serializable
{
  /**
	 * 
	 */
	private static final long serialVersionUID = -5989058553401272112L;
	
private int code;

  public int getCode() { return this.code; }

  public void setCode(int code) { this.code = code; }

  private String message;

  public String getMessage() { return this.message; }

  public void setMessage(String message) { this.message = message; }

  private String hostedpage_id;

  public String getHostedpageId() { return this.hostedpage_id; }

  public void setHostedpageId(String hostedpage_id) { this.hostedpage_id = hostedpage_id; }

  private String status;

  public String getStatus() { return this.status; }

  public void setStatus(String status) { this.status = status; }

  private String url;

  public String getUrl() { return this.url; }

  public void setUrl(String url) { this.url = url; }

  private String action;

  public String getAction() { return this.action; }

  public void setAction(String action) { this.action = action; }

  private ArrayList<Object> custom_fields;

  public ArrayList<Object> getCustomFields() { return this.custom_fields; }

  public void setCustomFields(ArrayList<Object> custom_fields) { this.custom_fields = custom_fields; }

  private Date expiring_time;

  public Date getExpiringTime() { return this.expiring_time; }

  public void setExpiringTime(Date expiring_time) { this.expiring_time = expiring_time; }

  private Date created_time;

  public Date getCreatedTime() { return this.created_time; }

  public void setCreatedTime(Date created_time) { this.created_time = created_time; }

  private Data data;

  public Data getData() { return this.data; }

  public void setData(Data data) { this.data = data; }
}

