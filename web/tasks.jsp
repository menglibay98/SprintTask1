<%@ page import="java.util.List" %>
<%@ page import="model.Tasks" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Task Manager</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <nav class="navbar navbar-expand-lg bg-primary">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Task Manager</a>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/home">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/addtask"> + Add Task</a>
                    </li>

                </ul>
            </div>
        </div>
    </nav>
    <% List<Tasks> tasks = (List<Tasks>) request.getAttribute("tasks"); %>
    <table class="table table-info table-hover">
        <thead>
        <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Description</th>
            <th scope="col">DeadlineDate</th>
            <th scope="col">Details</th>
        </tr>
        </thead>
        <tbody>
        <% if (tasks != null) {
            for (Tasks task : tasks) {


        %>
        <tr>
            <th scope="row"><%=task.getId()%></th>
            <td><%=task.getName()%></td>
            <td><%= task.getDescription()%></td>
            <td><%=task.getDeadlineDate()%></td>
            <td><a href="/details?id=<%=task.getId()%>">Details</a></td>
        </tr>
        <%
                }
            }
        %>

        </tbody>
    </table>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
</body>

</html>