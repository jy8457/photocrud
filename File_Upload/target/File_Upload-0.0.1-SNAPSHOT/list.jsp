<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Photo Storage</title>
<style>
button{
   border: none;
   color: white;
   font-size:16px;
   background-color:#db0759;
   font-weight: 200;
   }
#list {
   background-color: white;
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#list tr:nth-child(even){background-color: #f2f2f2;}
#list tr:hover {background-color: #ddd;}
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #db0759;
  border: 1px solid #db0759;
  color: white;
}</style>

<script>
   function delete_ok(id){
      var a = confirm("정말로 삭제하겠습니까?");
      if(a) location.href='deletepost.jsp?id=' + id;
   }
</script>
</head>
<body bgcolor=#000000;>

<table id="list" width="90%" >
<tr>
   <th>seq</th>
   <th>Title</th>
   <th>Edit</th>
   <th>Delete</th>
</tr>
<c:forEach items="${list}" var="u">
   <tr>
      <td>${u.seq}</td>
      <td><img src="/upload/${u.fileNmae}"></td>
      <td>${u.genre}</td>
      <td><a href="edit/${u.seq}">글 수정 </a></td>
       <td><a href="/board/delete?seq=${u.seq}"role="button">글 삭제 </a></td>
   </tr>
</c:forEach>
</table>   
<br/><button type="button" onclick="location.href='index.jsp'"> 새글쓰기  </button>
</body>
</html>


