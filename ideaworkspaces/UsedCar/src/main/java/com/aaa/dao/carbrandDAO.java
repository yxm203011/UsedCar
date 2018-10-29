package com.aaa.dao;

import com.aaa.entity.carbrand;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface carbrandDAO {

    /*
    * 查询所有车辆品牌
    * */
    @Select("select * from carbrand")
    public List<carbrand> find_carbrand();

    /*
    * 添加车辆品牌
    * */
    @Insert("insert into carbrand values(#{c.carbrandid},#{c.carbrandname},#{c.carbrandicon},#{c.carbrandlogogram})")
    public int insert_carbrand(@Param("c") carbrand car);

    /*
    * 根据编号查询车辆品牌
    * */
    @Select("select * from carbrand where carbrandid=#{carbrandid}")
    public List<carbrand> find_carbrandid(@Param("carbrandid") int carbrandid);

    /*
    * 修改车辆品牌
    * */
    @Update("update carbrand set carbrandname=#{c.carbrandname},carbrandicon=#{c.carbrandicon},carbrandlogogram=#{c.carbrandlogogram} where carbrandid=#{c.carbrandid}")
    public int update_carbrand(@Param("c") carbrand car);

    /*
    * 根据id查询车辆品牌，返回的是实体类
    * */
    @Select("select * from carbrand where carbrandid=#{carbrandid}")
    public carbrand sel_carbrandid(@Param("carbrandid") int carbrandid);
}
