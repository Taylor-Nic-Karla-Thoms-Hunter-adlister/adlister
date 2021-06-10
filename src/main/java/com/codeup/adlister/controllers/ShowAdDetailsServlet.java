package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.dao.MySQLAdsDao;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "IndividualAdDetails", urlPatterns = "/ads/more_info")
public class ShowAdDetailsServlet extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getQueryString());
        Ad ad = DaoFactory.getAdsDao().singleAd(id);
        request.setAttribute("ad", DaoFactory.getAdsDao().singleAd(id));
        request.setAttribute("owner", DaoFactory.getUsersDao().findByUserID((int) ad.getUserId()));
        request.getRequestDispatcher("/WEB-INF/ads/details.jsp").forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("owner"));
        List<Ad> ads = DaoFactory.getAdsDao().allAdsByUserId(id);
        request.setAttribute("moreAds", ads);
        request.getRequestDispatcher("/ads/filter").forward(request, response);


    }
}
