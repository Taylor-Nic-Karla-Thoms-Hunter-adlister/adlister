package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "controllers.AdsIndexAfterServlet", urlPatterns = "/access")
public class AdsIndexAfterServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("ads", DaoFactory.getAdsDao().all());
        request.getRequestDispatcher("/WEB-INF/ads/index-after.jsp").forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException {
            int id = Integer.parseInt(request.getParameter("owner"));
            List<Ad> ads = DaoFactory.getAdsDao().allAdsByUserId(id);
            request.setAttribute("ads", ads);
            request.getRequestDispatcher("/WEB-INF/ads/index-after.jsp").forward(request, response);


        }
    }
