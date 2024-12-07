package org.example.test2.servlets;
import org.example.test2.model.Customer;
import org.example.test2.servlets.HelloServlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "secondHelloServlet", value = "/second-hello-servlet")
public class SecondHelloServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getAttribute("name");
        Double newBalance = (Double) getServletContext().getAttribute("newBalance");
        Double oldBalance = (Double) getServletContext().getAttribute("balance");
        if(newBalance == null) {
            request.setAttribute("balance", oldBalance);
        }else{
            request.setAttribute("balance", newBalance);
        }
        getServletContext().getRequestDispatcher("/shop.jsp").forward(request, response);
    }
}