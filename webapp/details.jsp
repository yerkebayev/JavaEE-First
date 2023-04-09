<%@ page import="kz.bitlab.techorda.db.Task" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Title</title>
    <%@include file="head.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>
<div class="container mt-5 pb-5">
    <%
        Task task = (Task) request.getAttribute("task");
    %>

    <div class="row">
        <div class="col-6 mx-auto">
            <div class="row">
                <div class="col-12">
                    <label>NAME : </label>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-12">
                    <label>
                        <input type="text" class="form-control" readonly value="<%=task.getName()%>">
                    </label>
                </div>
            </div>

            <div class="row mt-3">
                <div class="col-12">
                    <label>DESCRIPTION : </label>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-12">
                    <label>
                        <textarea class="form-control" readonly rows="10"><%=task.getDescription()%></textarea>
                    </label>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <label>DEADLINE DATE : </label>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-12">
                    <label>
                        <input type="text" class="form-control" readonly value="<%=task.getDeadlineDate()%>">
                    </label>
                </div>
            </div>

            <div class="row mt-3">
                <div class="col-12">
                    <a href="http://localhost:8080">
                        <button type="button" class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#editTask">
                            Go back
                        </button>
                    </a>

                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-danger btn-sm ms-2" data-bs-toggle="modal" data-bs-target="#deleteTask">
                        Delete Task
                    </button>
                </div>
            </div>
            <!-- Modal -->
            <div class="modal fade" id="deleteTask" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="${pageContext.request.contextPath}/delete-task" method="post">
                            <input type="hidden" name="id" value="<%=task.getId()%>">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5">Confirm Delete</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <h5 class="text-center">Are you sure?</h5>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">NO</button>
                                <button class="btn btn-danger">YES</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
</body>
</html>