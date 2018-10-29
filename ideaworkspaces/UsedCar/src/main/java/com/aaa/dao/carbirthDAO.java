package com.aaa.dao;

import com.aaa.entity.carbirth;
import com.sun.org.glassfish.gmbal.ParameterNames;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface carbirthDAO {
    /*
    *查看所有的车辆年款
     */
    @Select("select * from carbirth")
    public List<carbirth> find_carbirth();

    /*
    * 添加年款
    * */
    @Insert("insert into carbirth values(#{carbirthid},#{carbirthname},#{carseriesid})")
    public int insert_carbirth(@Param("carbirthid") int carbirthid,@Param("carbirthname") String carbirthname,@Param("carseriesid") int carseriesid);

    /*
    * 根据年款id查询年款
    * */
    @Select("select * from carbirth where carbirthid=#{carbirthid}")
    public List<carbirth> find_carbirthid(@Param("carbirthid") int carbirthid);

    /*
    * 修改年款
    * */
    @Update("update carbirth set carbirthname=#{carbirthname},carseriesid=#{carseriesid} where carbirthid=#{carbirthid}")
    public int update_carbirth(@Param("carbirthid") int carbirthid,@Param("carbirthname") String carbirthname,@Param("carseriesid") int carseriesid);
}
