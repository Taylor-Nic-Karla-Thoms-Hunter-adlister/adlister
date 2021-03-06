//package com.codeup.adlister.dao;
//
//import com.codeup.adlister.models.Ad;
//
//import java.util.ArrayList;
//import java.util.List;
//
//public class ListAdsDao implements Ads {
//    private List<Ad> ads;
//
//    public List<Ad> all() {
//        if (ads == null) {
//            ads = generateAds();
//        }
//        return ads;
//    }
//
//    public Long insert(Ad ad) {
//        // make sure we have ads
//        if (ads == null) {
//            ads = generateAds();
//        }
//        // we'll assign an "id" here based on the size of the ads list
//        // really the dao would handle this
//        ad.setId((long) ads.size());
//        ads.add(ad);
//        return ad.getId();
//    }
//
//    private List<Ad> generateAds() {
//        List<Ad> ads = new ArrayList<>();
//        ads.add(new Ad(
//            1,
//            1,
//                rs.getString("title"), rs.getString("description"), rs.getString("brand"), rs.getString("type"), "playstation for sale",
//                rs.getFloat("price"), "This is a slightly used playstation"
//        ));
//        ads.add(new Ad(
//            2,
//            1,
//                rs.getString("title"), rs.getString("description"), rs.getString("brand"), rs.getString("type"), "Super Nintendo",
//                rs.getFloat("price"), "Get your game on with this old-school classic!"
//        ));
//        ads.add(new Ad(
//            3,
//            2,
//                rs.getString("title"), rs.getString("description"), rs.getString("brand"), rs.getString("type"), "Junior Java Developer Position",
//                rs.getFloat("price"), "Minimum 7 years of experience required. You will be working in the scripting language for Java, JavaScript"
//        ));
//        ads.add(new Ad(
//            4,
//            2,
//                rs.getString("title"), rs.getString("description"), rs.getString("brand"), rs.getString("type"), "JavaScript Developer needed",
//                rs.getFloat("price"), "Must have strong Java skills"
//        ));
//        return ads;
//    }
//}
