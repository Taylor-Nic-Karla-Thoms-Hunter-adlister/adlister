package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import static java.lang.Float.parseFloat;
import static java.lang.Integer.parseInt;

@WebServlet(name = "controllers.UpdateAdServlet", urlPatterns = "/update")
public class UpdateAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/access");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/ads/update.jsp")
                .forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        User user = (User) request.getSession().getAttribute("user");
        String update = request.getParameter("update");
        Ad ad = new Ad(
                user.getId(),
                request.getParameter("title"),
                request.getParameter("description"),
                parseFloat(request.getParameter("initial_price")),
                request.getParameter("brand"),
                request.getParameter("bike_type"),
                parseInt(request.getParameter("speed")),
                request.getParameter("size"),
                request.getParameter("image")

        );
        DaoFactory.getAdsDao().insert(ad);
        response.sendRedirect("/access");
    }
}
