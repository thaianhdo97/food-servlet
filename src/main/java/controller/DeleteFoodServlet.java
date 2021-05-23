package controller;

import dao.FoodDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DeleteFoodServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // lấy sid từ jsp
        String id = req.getParameter("id");
        // truyền sid vào dao
        FoodDAO dao = new FoodDAO();
        dao.delete(id);
        resp.sendRedirect("/hello-servlet");
    }
}
