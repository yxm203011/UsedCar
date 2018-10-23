package com.aaa.dao;

import com.aaa.entity.carbrand;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface carbrandDAO {

    @Select("select * from carbrand")
    public List<carbrand> find_carbrand();

    @Insert("insert into carbrand values(#{c.carbrandid},#{c.carbrandname},#{c.carbrandicon},#{c.carbrandlogogram})")
    public int insert_carbrand(@Param("c") carbrand car);

    @Select("select * from carbrand where carbrandid=#{carbrandid}")
    public List<carbrand> find_carbrandid(@Param("carbrandid") int carbrandid);

    @Update("update carbrand set carbrandname=#{c.carbrandname},carbrandicon=#{c.carbrandicon},carbrandlogogram=#{c.carbrandlogogram} where carbrandid=#{c.carbrandid}")
    public int update_carbrand(@Param("c") carbrand car);
}
