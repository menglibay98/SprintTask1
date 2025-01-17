<%@ page import="java.util.List" %>
<%@ page import="model.Tasks" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <nav class="navbar navbar-expand-lg bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">TASKS</a>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/home">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/addtask">Add Task</a>
                    </li>

                </ul>
            </div>
        </div>
    </nav>

    <form action="/addtask"  method="post">
        <div class="mb-3">
            <label  class="form-label">Name</label>
            <input type="text" class="form-control" name="name">
        </div>
        <div class="mb-3">
            <label  class="form-label">Description</label>
            <input type="text" class="form-control" name="description">
        </div>
        <div class="mb-3">
            <label  class="form-label">DeadlineDate</label>
            <input type="date" class="form-control" name="deadlineDate">
        </div>
        <div class="mb-3">
            <button  class="btn btn-success" type="submit">Add new task</button>
        </div>
    </form>

</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
</body>

</html>