package com.codeup.adlister.controllers;

//@WebServlet(name = "controllers.UpdateAdServlet", urlPatterns = "/update")
//public class EditAdServlet extends HttpServlet {
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        if (request.getSession().getAttribute("user") == null) {
//            response.sendRedirect("/login");
//            return;
//        }
//        request.getRequestDispatcher("/WEB-INF/ads/editAd.jsp")
//                .forward(request, response);
//    }
//
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
//        User user = (User) request.getSession().getAttribute("user");
//        int userId = user.getId();
////        request.getSession().getAttribute()
//        String edit = request.getParameter("ad");

//        String title = request.getParameter("title");
//        String description = request.getParameter("description");
//        float price = parseFloat(request.getParameter("initial_price"));
//        String brand = request.getParameter("brand");
//        String type = request.getParameter("bike_type");
//        int speed = parseInt(request.getParameter("speed"));
//        String size = request.getParameter("size");
//        String image = request.getParameter("image");



//
//        DaoFactory.getAdsDao().insert(ad);
//        response.sendRedirect("/access");
//    }

//    String ide=request.getParameter("id");
//    int num=Integer.parseInt(ide);
//    String name=request.getParameter("name");
//    String address=request.getParameter("address");
//    int contact=Integer.parseInt(request.getParameter("contact"));
//    String email=request.getParameter("email");
//try{
//        Connection conn = null;
//        Class.forName("com.mysql.jdbc.Driver").newInstance();
//        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root", "root");
//        Statement st=null;
//        st=conn.createStatement();
//        st.executeUpdate("update employee set name='"+name+"',address='"+address+"',contactNo="+contact+",email='"+email+"' where id='"+num+"'");
//        response.sendRedirect("/examples/jsp/application.jsp");
//    }
//catch(Exception e){
//        System.out.println(e);
//    }
//}

