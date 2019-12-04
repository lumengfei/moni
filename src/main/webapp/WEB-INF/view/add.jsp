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
		<form:form action="add" method="post" modelAttribute="d"> 
			<table>
				<tr>
					<td>影片名</td>
					<td><form:input path="dname"/><form:errors path="dname"></form:errors></td>
				</tr>
				<tr>
					<td>导演</td>
					<td><form:input path="dao"/>
					<form:errors path="dao"></form:errors></td>
				</tr>
				<tr>
					<td>票价</td>
					<td><form:input path="prive"/>
					<form:errors path="prive"></form:errors></td>
				</tr>
				<tr>
					<td>上映时间</td>
					<td><form:input path="dt" onclick="WdatePicker()"/>
					<form:errors path="dt"></form:errors></td>
				</tr>
				<tr>
					<td>时长</td>
					<td><form:input path="sc"/>
					<form:errors path="sc"></form:errors></td>
				</tr>
				<tr>
					<td>类型</td>
					<td><form:input path="dtype"/>
					<form:errors path="dtype"></form:errors></td>
				</tr>
				<tr>
					<td>年代</td>
					<td><form:input path="nd"/>
					<form:errors path="nd"></form:errors></td>
				</tr>
				<tr>
					<td>地区</td>
					<td><form:input path="city"/>
					<form:errors path="city"></form:errors></td>
				</tr>
				<tr>
					<td><form:button>添加</form:button></td>
				</tr>
			</table>
		</form:form>
</body>
</html>