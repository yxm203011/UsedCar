package com.aaa.dao;

import com.aaa.entity.position;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface positionDAO {

    /*
    * 按照职位id查询
    * */
    @Select("select * from position where positionid=#{positionid}")
    public position find_poition(@Param("positionid") int positionid);

    /*
    * 查询所有职位
    * */
    @Select("select * from position")
    public List<position> find_Allposition();

    /*
    * 添加职位
    * */
    @Insert("insert into position values(#{p.positionid},#{p.positionname},NOW(),#{p.userinfoid},#{p.positiondescribe})")
    public int insert_position(@Param("p") position po);

    /*
    * 根据id查询职位信息
    * */
    @Select("select * from position where positionid=#{id}")
    public List<position> find_positionid(@Param("id") int positionid);

    /*
    * 修改职位信息
    * */
    @Update("update position set positionname=#{positionname},userinfoid=#{userinfoid},positiondescribe=#{positiondescribe} where positionid=#{positionid}")
    public int update_position(@Param("positionname") String positionname,@Param("userinfoid") int userinfoid,@Param("positiondescribe") String positiondescribe,@Param("positionid") int positionid);
}
