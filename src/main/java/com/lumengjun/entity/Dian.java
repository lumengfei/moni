package com.lumengjun.entity;

import java.util.Date;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.format.annotation.DateTimeFormat;


public class Dian {

	private Integer did;//主键
	@NotBlank(message="电影名称不可为空")
	private String dname;//电影名称
	@NotBlank(message="导演不可为空")
	private String dao;//导演
	@NotNull(message="票价不可为空")
	private Integer prive;//票价
	@Past(message="不可超过当前时间")
	@DateTimeFormat(pattern="yyyy-MM-dd")
	@NotNull(message="上映时间不可为空")
	private Date dt;//上映时间
	@NotBlank(message="电影类型不可为空")
	private String dtype;//电影类型
	
	@NotBlank(message="年代不可为空")
	private String nd;//年代
	@NotBlank(message="地区不可为空")
	private String city;//地区
	
	private Integer sts;//状态
	@NotNull(message="电影时长不可为空")
	private Integer sc;//电影时长

	
	
	public Integer getSc() {
		return sc;
	}

	public void setSc(Integer sc) {
		this.sc = sc;
	}

	public Integer getDid() {
		return did;
	}

	public void setDid(Integer did) {
		this.did = did;
	}

	public String getDname() {
		return dname;
	}

	public void setDname(String dname) {
		this.dname = dname;
	}

	public String getDao() {
		return dao;
	}

	public void setDao(String dao) {
		this.dao = dao;
	}

	public Integer getPrive() {
		return prive;
	}

	public void setPrive(Integer prive) {
		this.prive = prive;
	}

	public Date getDt() {
		return dt;
	}

	public void setDt(Date dt) {
		this.dt = dt;
	}

	public String getDtype() {
		return dtype;
	}

	public void setDtype(String dtype) {
		this.dtype = dtype;
	}

	public String getNd() {
		return nd;
	}

	public void setNd(String nd) {
		this.nd = nd;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public Integer getSts() {
		return sts;
	}

	public void setSts(Integer sts) {
		this.sts = sts;
	}

	@Override
	public String toString() {
		return "Dian [did=" + did + ", dname=" + dname + ", dao=" + dao
				+ ", prive=" + prive + ", dt=" + dt + ", dtype=" + dtype
				+ ", nd=" + nd + ", city=" + city + ", sts=" + sts + ", sc="
				+ sc + "]";
	}
	
	
}
