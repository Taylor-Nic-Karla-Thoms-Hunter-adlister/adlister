package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;

@WebServlet(name = "controllers.AdsIndexAfterServlet", urlPatterns = "/user-ads")
public class ViewUserAdsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        ResultSet rs = null;
        request.getSession().getAttribute("user");
        request.setAttribute("ads", DaoFactory.getAdsDao().viewUsersAds());
        request.getRequestDispatcher("/WEB-INF/ads/view-user-ads.jsp").forward(request, response);
    }
}
