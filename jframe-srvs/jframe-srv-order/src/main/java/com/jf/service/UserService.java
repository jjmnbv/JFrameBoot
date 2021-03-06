package com.jf.service;

import com.jf.database.mapper.TestMapper;
import com.jf.database.model.User;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: xujunfei
 * Date: 2018-05-14
 * Time: 13:35
 */
@Service
@Transactional
public class UserService {

    private TestMapper testMapper;

    /**
     * @param id
     * @return
     */
    public User findUserById(Integer id) {
        return testMapper.findById(id);
    }

}
