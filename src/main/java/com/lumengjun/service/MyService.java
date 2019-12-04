package com.lumengjun.service;

import java.util.List;

import javax.validation.Valid;

import com.lumengjun.entity.Dian;
import com.lumengjun.entity.TiaoJian;

public interface MyService {

	

	void add(@Valid Dian d);

	void updsts(Integer sts,Integer did);

	List<Dian> getList(TiaoJian tj);

}
