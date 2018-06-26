package com.neuedu.interceptor;

import com.neuedu.entity.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor implements HandlerInterceptor{
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
        //将登陆信息存到cookie
        /*Cookie cookie = new Cookie("username",user.getUsername());
        cookie.setMaxAge(60*60*24*7);
        httpServletResponse.addCookie(cookie);
        System.out.println(1);*/
        if(user == null){
            //httpServletRequest.getRequestDispatcher("/WEB-INF/view/login.jsp").forward(httpServletRequest,httpServletResponse);
            httpServletResponse.sendRedirect("/empdemo/user/loginView");
            return false;
        }else{
            return true;
        }

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
