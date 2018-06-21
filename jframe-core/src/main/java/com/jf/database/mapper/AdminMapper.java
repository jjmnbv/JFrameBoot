package com.jf.database.mapper;

import com.jf.database.model.custom.BaseVo;
import com.jf.database.model.Admin;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * AdminMapper Interface
 * @author rick
 * @version 1.0
 */
public interface AdminMapper {

	List<Admin> findByCondition(BaseVo baseVo);

    Admin findById(Long id);

	int findCountByKey(BaseVo baseVo);

	Admin findByNameAndPwd(@Param("adminName") String adminName, @Param("adminPassword") String adminPassword);

	Admin findRightsById(Long id);

	int insert(Admin bean);

	int update(Admin bean);

    int delete(Long id);

}