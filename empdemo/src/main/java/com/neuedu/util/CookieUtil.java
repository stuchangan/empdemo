package com.neuedu.util;

import javax.servlet.http.Cookie;
import java.util.HashMap;
import java.util.Map;

public class CookieUtil  {
    public static Map<String,Cookie> getCookieMap(Cookie[] cookies){
        Map<String,Cookie> cookieMap = new HashMap<>();
        if(cookies != null){
            for (Cookie cookie : cookies) {
                cookieMap.put(cookie.getName(),cookie);
                //System.out.println(cookie.getName());
                //System.out.println(cookie);
            }
        }
        return cookieMap;
    }
}
