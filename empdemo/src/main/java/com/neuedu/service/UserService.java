package com.neuedu.service;


import com.neuedu.entity.User;


public interface UserService {
    /**
     * 根据用户名查询信息
     * @param username
     * @return 用户对象
     */
    User getUserByUsername(String username);

    /**
     *添加user的方法
     * @param user
     * @return
     */
    int saveUser(User user);
}
