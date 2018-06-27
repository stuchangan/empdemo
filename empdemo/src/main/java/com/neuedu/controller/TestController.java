package com.neuedu.controller;

import com.neuedu.entity.Emp;
import com.neuedu.service.DeptService;
import com.neuedu.service.EmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * 前后分离练习
 */
@Controller
@RequestMapping(value = {"/emp"})
public class TestController {
    @Autowired
    private EmpService empService;
    @Autowired
    private DeptService deptService;

    @RequestMapping(value = {"/emps"})
    @ResponseBody //告诉springmvc这个响应不是页面是一个实体内容，转化成json响应
    @CrossOrigin //允许ajax跨域，在http协议上带一个键值对Access-Control-Allow-Origin
    public List<Emp> emps(HttpServletResponse response) throws IOException {
        //1、数据查询
        List<Emp> empList = empService.listEmp();
        return empList;
        //2、怎么转化为json
        //3、怎么响应给前台


    }

}
