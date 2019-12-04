<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<link rel="stylesheet" href="css/css.css">
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js"></script>
</head>
<body>
<form action="gettj" method="post">
	<table>
		<tr>
			<td>影片名称<input type="text" name="name" value="${tj.name}"></td>
			<td>上映时间<input type="text" name="dt1" onclick="WdatePicker()" value="${tj.dt1 }">至
			<input type="text" name="dt2" onclick="WdatePicker()" value="${tj.dt2 }"></td>		
		</tr>
		<tr>
			<td>导演<input type="text" name="dao" value="${tj.dao }"></td>
			<td>价格<input type="number" name="jg1" value="${tj.jg1 }">-
			<input type="number" name="jg2" value="${tj.jg2 }"></td>
		</tr>
		<tr>
			<td>年代电影<input type="text" name="nd" value="${tj.nd }"></td>
			<td>
			<td>电影时长<input type="number" name="sc1" value="${tj.jg1 }">-
			<input type="number" name="sc2" value="${tj.jg2 }">
			</td>
		</tr>
		<tr>
			<td><input type="submit" value="查询影片"></td>
			<td><input type="button" value="重置查询"></td>
		</tr>
	</table>
	</form>
</body>
</html>