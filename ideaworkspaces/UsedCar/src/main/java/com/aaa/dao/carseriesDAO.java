package com.aaa.dao;

import com.aaa.entity.carseries;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface carseriesDAO {

    /*
    * 查询所有车系
    * */
    @Select("select * from carseries")
    public List<carseries> find_carseries();

    /*
    * 添加车系
    * */
    @Insert("insert into carseries values(#{carseriesid},#{carseriesname},#{carbrandid})")
    public int insert_carseries(@Param("carseriesid") int carseriesid,@Param("carseriesname") String carseriesname,@Param("carbrandid") int carbrandid);

    /*
    * 修改车系
    * */
    @Update("update carseries set carseriesname=#{carseriesname},carbrandid=#{carbrandid} where carseriesid=#{carseriesid}")
    public int update_carseries(@Param("carseriesid") int carseriesid,@Param("carseriesname") String carseriesname,@Param("carbrandid") int carbrandid);

    /*
    * 根据编号查询车系
    * */
    @Select("select * from carseries where carseriesid=#{carseriesid}")
    public List<carseries> find_carseriesid(@Param("carseriesid") int carseriesid);

    /*
    * 查询所有的车系返回的是个实体类
    * */
    @Select("select * from carseries where carseriesid=#{carseriesid}")
    public carseries sel_carseries(@Param("carseriesid") int carseriesid);
}
