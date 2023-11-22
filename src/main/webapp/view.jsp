<%@ page import="com.example.pp4_jspcrud.BoardVO" %>
<%@ page import="com.example.pp4_jspcrud.BoardDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>view</title>
</head>
<body>

<%
    BoardDAO boardDAO = new BoardDAO();
    String id = request.getParameter("id");
    BoardVO u = boardDAO.getBoard(Integer.parseInt(id));
%>

<h1 class="visually-hidden">Headers examples</h1>
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
            <li class="nav-item"><a href="#" class="nav-link active" aria-current="page">Home</a></li>
            <li class="nav-item"><a href="addpostform.jsp" class="nav-link">Add</a></li>
        </ul>
    </header>
</div>

<h1>View Form</h1>

    <table>
        <tr>
            <td>Title:</td>
            <td><%=u.getTitle()%></td>
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
            <td colspan="2"><input type="submit" value="Edit Post"/>
                <input type="button" value="Cancel" onclick="history.back()"/></td>
        </tr>
    </table>


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
