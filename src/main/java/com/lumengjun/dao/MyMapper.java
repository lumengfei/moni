package com.lumengjun.dao;

import java.util.List;

import javax.validation.Valid;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.lumengjun.entity.Dian;
import com.lumengjun.entity.TiaoJian;

public interface MyMapper {

	@Select("select * from dian")
	List<Dian> getList(TiaoJian tj);

	@Insert("insert into dian values(null,#{dname},#{dao},#{prive},#{dt},#{dtype},#{nd},#{city},2,#{sc})")
	void add(@Valid Dian d);

	@Update("update dian set sts=#{sts} where did=#{did}")
	void updsts(@Param("sts")Integer sts,@Param("did")Integer did);

}
