package org.example.test2.servlets;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "checkOutServlet", value = "/check-out-servlet")
public class checkOutServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getAttribute("name");
        getServletContext().getAttribute("cartPrice");
        getServletContext().getRequestDispatcher("/checkOut.jsp").forward(request, response);
    }
}
