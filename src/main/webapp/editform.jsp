<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.example.pp4_jspcrud.BoardDAO, com.example.pp4_jspcrud.BoardVO" %>
<%@ page import="com.example.pp4_jspcrud.BoardDAO" %>
<%@ page import="com.example.pp4_jspcrud.BoardVO" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Form</title>

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

    <style>
        #thiset{
            width: 65%;
            margin-left: auto;
            margin-right: auto;
        }

        .btnLightBlue {
            background: #0066FF;
            color:white;
        }


        /* BORDER */
        .btnLightBlue.btnBorder {
            box-shadow: 0px 0px 0px 0px #A4D2FF;
            color: white;
        }

        .btnLightBlue.btnBorder:hover {
            box-shadow: 0px 0px 0px 5px #A4D2FF;
            color: white;
        }
    </style>
</head>
<body>

<%
    BoardDAO boardDAO = new BoardDAO();
    String id = request.getParameter("id");
    BoardVO u = boardDAO.getBoard(Integer.parseInt(id));
%>

<h1 class="visually-hidden" href="#" onclick="location.href = 'posts.jsp'">Headers examples</h1>

<div class="container">
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
            <li class="nav-item"><a href="posts.jsp" class="nav-link active" aria-current="page">Home</a></li>
            <li class="nav-item"><a class="nav-link">Add</a></li>
        </ul>
    </header>
</div>

<form action="editpost.jsp" method="post">
    <input type="hidden" name="seq" value="<%=u.getSeq() %>"/>
    <table id="thiset">
        <tr>
            <td>Title:</td>
            <td><input type="text" name="title" value="<%= u.getTitle()%>"/></td>
        </tr>
        <tr>
            <td>Writer:</td>
            <td><input type="text" name="writer" value="<%= u.getWriter()%>"/></td>
        </tr>
        <tr>
            <td>Content:</td>
            <td><textarea cols="50" rows="5" name="content"><%= u.getContent()%></textarea></td>
        </tr>
        <tr>
            <td>Category:</td>
            <td><input type="text" name="category" value="<%=u.getCategory()%>"></td>
        </tr>
        <tr>
            <td colspan="2"><br><br><input class="buttom btnBorder btnLightBlue" type="submit" value="Edit Post"/>
                <input class="buttom btnBorder btnLightBlue" type="button" value="Cancel" onclick="history.back()"/></td>
        </tr>
    </table>
</form>

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