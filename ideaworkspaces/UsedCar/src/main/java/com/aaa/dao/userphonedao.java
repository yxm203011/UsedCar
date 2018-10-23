package com.aaa.dao;

import com.aaa.entity.userphone;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface userphonedao {

    @Insert("insert into userphone values(#{id},#{phone})")
    public int  adduserphone(@Param("id") int id, @Param("phone")String phone);

    @Select("select * from userphone where userphones=#{phone}")
    public List<userphone> seluserphone(@Param("phone") String phone);
}
