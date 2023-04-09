package kz.bitlab.techorda.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kz.bitlab.techorda.db.DBManager;
import kz.bitlab.techorda.db.Task;

import java.io.IOException;

@WebServlet(value = "/details")
public class DetailsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        long id = -1;
        try {
            id = Long.parseLong(request.getParameter("task_id"));
        } catch (Exception ignored) {
        }
        Task task = DBManager.getTask(id);
        request.setAttribute("task", task);
        request.getRequestDispatcher("/details.jsp").forward(request, response);
    }
}