package com.lumengjun.service.impl;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lumengjun.dao.MyMapper;
import com.lumengjun.entity.Dian;
import com.lumengjun.entity.TiaoJian;
import com.lumengjun.service.MyService;

@Service
public class MyServiceImpl implements MyService {

	@Autowired
	MyMapper ma;

	@Override
	public List<Dian> getList(TiaoJian tj) {
		// TODO Auto-generated method stub
		return ma.getList(tj);
	}

	@Override
	public void add(Dian d) {
		ma.add(d);
		
	}

	@Override
	public void updsts(Integer sts,Integer did) {
		ma.updsts(sts,did);
		
	}
	
}
