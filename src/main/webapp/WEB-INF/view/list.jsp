<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
     <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<link rel="stylesheet" href="css/css.css">
</head>
<script type="text/javascript">
	function add(){
		location='toadd';
	}
	function page(id){
		location='list?pageNum='+id;
	}
	function issts(id,did){
		location="issts?sts="+id+"&&did="+did;
	}
</script>
<body>

	<table>
		<tr>
			<td colspan="100">
			<input type="button" onclick="tj.jsp" value="查询影片">
			</td>
		</tr>
		<tr>
			<td>影片名</td>
			<td>导演</td>
			<td>票价</td>
			<td>上映</td>
			<td>时长</td>
			<td>类型</td>
			<td>年代</td>
			<td>地区</td>
			<td>状态</td>
			<td>操作<input type="button" onclick="add()" value="添加"></td>
		</tr>
		<c:forEach items="${list.list }" var="d">
			<tr>
				<td>${d.dname}</td>
				<td>${d.dao}</td>
				<td>${d.prive}</td>
				<td>
				<fmt:formatDate value="${d.dt}" pattern="yyyy-MM-dd"/>
				</td>
				<td>${d.sc}
				</td>
				<td>${d.dtype}</td>
				<td>${d.nd}</td>
				<td>${d.city}</td>
				<td>
				${d.sts==0?'已经下架':''}
				${d.sts==1?'正在热映':''}
				${d.sts==2?'即将上映':''}
				</td>
				<td>
				<input type="button" onclick="issts(${d.sts==1?0:1},${d.did})" value="${d.sts==1?'下架':'上架'}">
				</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="100">
			<button onclick="page(1)">首页</button>
			<button onclick="page(${list.prePage==0?1:list.prePage})">上一页</button>
			<button onclick="page(${list.nextPage==0?list.pages:list.nextPage})">下一页</button>
			<button onclick="page(${list.pages})">尾页页</button>
			</td>
		</tr>
		
	</table>
</body>
</html>