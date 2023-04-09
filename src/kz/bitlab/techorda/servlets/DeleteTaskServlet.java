package kz.bitlab.techorda.servlets;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kz.bitlab.techorda.db.DBManager;

import java.io.IOException;

@WebServlet(value = "/delete-task")
public class DeleteTaskServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        long id = Long.parseLong(request.getParameter("id"));
        DBManager.deleteTask(id);

        response.sendRedirect("/");

    }
}
