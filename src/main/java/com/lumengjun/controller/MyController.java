package com.lumengjun.controller;

import java.util.List;




import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lumengjun.entity.Dian;
import com.lumengjun.entity.TiaoJian;
import com.lumengjun.service.MyService;


@Controller
public class MyController {

	@Autowired
	MyService ser;
	
	@RequestMapping("list")
	public String list(@RequestParam(defaultValue="1") Integer pageNum,HttpServletRequest request){
		PageHelper.startPage(pageNum, 3);
		TiaoJian tj = (TiaoJian) request.getAttribute("tj");
		List<Dian> list = ser.getList(tj);
		PageInfo<Dian> pageInfo = new PageInfo<Dian>(list);
		request.setAttribute("list", pageInfo);
		return "list";
	}
	
	@RequestMapping("toadd")
	public String toadd(HttpServletRequest request){
		request.setAttribute("d", new Dian());
		return "add";
	}
	
	@RequestMapping("add")
	public String add(@Valid @ModelAttribute("d") Dian d,BindingResult result,HttpServletRequest request){
		if(result.hasErrors()){
			request.setAttribute("d", d);
			return "add";
		}
		System.out.println(d+"111110011");
		ser.add(d);
		return "redirect:list";
	}
	
	@RequestMapping("issts")
	public String issts(Integer sts,Integer did){
		ser.updsts(sts,did);
		return "redirect:list";
	}
	
	@RequestMapping("gettj")
	public String gettj(TiaoJian tj,HttpServletRequest request){
		request.getSession().setAttribute("tj", tj);
		return "redirect:list";
	}
	
}
