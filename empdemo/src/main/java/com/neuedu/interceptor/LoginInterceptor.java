package com.neuedu.interceptor;

import com.neuedu.entity.User;

import com.neuedu.mapper.UserMapper;
import com.neuedu.util.CookieUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Map;

public class LoginInterceptor implements HandlerInterceptor{
    @Autowired
    UserMapper userMapper;
    /**
     * 此方法（核心控制器）是在执行controller方法之前执行的
     * 如果才方法返回false，控制器就不在执行controller中的方法
     * @param httpServletRequest
     * @param httpServletResponse
     * @param o
     * @return
     * @throws Exception
     */
    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        //将登陆信息存到session
        HttpSession httpSession = httpServletRequest.getSession();
        User user = (User) httpSession.getAttribute("user");
        //System.out.println(user);
        if(user == null){
           //httpServletRequest.getRequestDispatcher("/WEB-INF/view/login.jsp").forward(httpServletRequest,httpServletResponse);
            Cookie[] cookies = httpServletRequest.getCookies();
                Map<String,Cookie> cookieMap = CookieUtil.getCookieMap(cookies);
                //System.out.println(cookieMap.size());
                Cookie userCookie = cookieMap.get("username");
                if (userCookie != null){
                    String username = userCookie.getValue();
                    User u = userMapper.getUserByUsername(username);
                    httpSession.setAttribute("user",u);
                    return true;
                }else {
                    httpServletResponse.sendRedirect("/empdemo/user/loginView");
                    return false;
            }
        }
            return true;
    }

    /**
     *此方法在controller中方法执行之后并且在视图渲染之前执行
     * @param httpServletRequest
     * @param httpServletResponse
     * @param o
     * @param modelAndView
     * @throws Exception
     */
    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    /**
     *此方法在controller中方法执行之后并且在视图渲染之后执行
     *
     * 主要执行清理工作（处理异常）
     * @param httpServletRequest
     * @param httpServletResponse
     * @param o
     * @param e
     * @throws Exception
     */
    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
