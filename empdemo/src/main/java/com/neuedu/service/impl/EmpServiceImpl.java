package com.neuedu.service.impl;

import com.neuedu.entity.Emp;
import com.neuedu.mapper.EmpMapper;
import com.neuedu.service.EmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmpServiceImpl implements EmpService {

    @Autowired
    private EmpMapper empMapper;

    //查询所有数据
    @Override
    public List<Emp> listEmp() {
        return empMapper.listEmp();
    }

    //根据id查询信息
    @Override
    public Emp getEmpById(int id) {
        return empMapper.getEmpById(id);
    }


    //根据id删除数据
    @Override
    public int deleteEmpByIds(int[] ids) {
        return empMapper.deleteEmpByIds(ids);
    }

    //添加数据并跳转到对应页面
    @Override
    public int saveEmp(Emp emp) {
        empMapper.saveEmp(emp);
        int pageNum = empMapper.getCount();
        return pageNum % 10 == 0 ? pageNum / 10:pageNum / 10 + 1;
    }



    //修改emp
    @Override
    public int updateEmp(Emp emp) {
        return empMapper.updateEmp(emp);
    }
}
