<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.example.pp4_jspcrud.BoardDAO, com.example.pp4_jspcrud.BoardVO,java.util.*" %>
<%@ page import="com.example.pp4_jspcrud.BoardDAO" %>
<%@ page import="com.example.pp4_jspcrud.BoardVO" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>

    <link href="carousel.css" rel="stylesheet">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
            integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
            integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
            crossorigin="anonymous"></script>

    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

    <title>free board</title>
    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 85%;
            margin-left: auto;
            margin-right: auto;
        }

        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }

        #list tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        #list tr:hover {
            background-color: #ddd;
        }

        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }
    </style>

    <script>
        function delete_ok(id) {
            var a = confirm("정말로 삭제하겠습니까?");
            if (a) location.href = 'deletepost.jsp?id=' + id;
        }
    </script>
</head>

<body>
<h1 class="visually-hidden">Headers examples</h1>

<div class="container" nav>
    <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
        <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
            <svg class="bi me-2" width="40" height="32">
                <use xlink:href="#bootstrap"/>
            </svg>
            <span class="fs-4" style="font-weight: bold">Eunsaem's Final Board</span>
        </a>

        <ul class="nav nav-pills">
            <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3">
                <input type="search" class="form-control form-control-dark" placeholder="Search..."
                       aria-label="Search">
            </form>
            <li class="nav-item"><a href="#" class="nav-link active" aria-current="page">Home</a></li>
            <li class="nav-item"><a href="addpostform.jsp" class="nav-link">Add</a></li>
        </ul>
    </header>
</div>

<%
    BoardDAO boardDAO = new BoardDAO();
    List<BoardVO> list = boardDAO.getBoardList();
    request.setAttribute("list", list);
%>
<table id="list" width="90%">
    <tr>
        <th>No</th>
        <th>Subject</th>
        <th>Writer</th>
<%--        <th>Content</th>--%>
        <th>Category</th>
        <th>Regdate</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.getSeq()}</td>
            <td>${u.getTitle()}</td>
            <td>${u.getWriter()}</td>
<%--            <td>${u.getContent()}</td>--%>
            <td>${u.getCategory()}</td>
            <td>${u.getRegdate()}</td>
            <td><a href="editform.jsp?id=${u.getSeq()}">Edit</a></td>
            <td><a href="javascript:delete_ok('${u.getSeq()}')">Delete</a></td>
        </tr>
    </c:forEach>
</table>
<br/><a href="view.jsp">view</a>

<%--<br><br>--%>
<%--<footer class="text-muted py-5">--%>
<%--    <div class="container">--%>
<%--        <p class="float-end mb-1">--%>
<%--            <a href="#">Back to top</a>--%>
<%--        </p>--%>
<%--        <p class="mb-1">Made by &copy; Eunsaem Lee, 22200565--%>
<%--        </p>--%>
<%--        <p class="mb-0">More about Eunsaem's project2, <a href="/">visit the index.html</a> or <a--%>
<%--                href="https://github.com/eunsaemsaem">visit github</a>--%>
<%--    </div>--%>
<%--</footer>--%>
</body>
</html>