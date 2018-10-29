package com.aaa.dao;

import com.aaa.entity.userinfo;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface userinfoDAO {
    /*
     *登陆
     */
    @Select("select * from userinfo where userinfophone=#{userphone} and userinfopassword=#{userpwd} and positionid=258194 and userinfostate=0")
    public List<userinfo> find_oneuserinfo(@Param("userphone") String userphone,@Param("userpwd") String userpwd);

    /*
    * 查询所有的管理员
    * */
    @Select("select * from userinfo where positionid=258194")
    public List<userinfo> find_userinfo();

    /*
    * 修改用户状态
    * */
    @Update("update userinfo set userinfostate=#{state},userinfoupid=#{userinfoupid} where userinfoid=#{id}")
    public int update_userinfostate(@Param("id") int userinfoid,@Param("state") int userinfostate,@Param("userinfoupid") int userinfoupid);

    /*
    * 删除
    * */
    @Delete("delete from userinfo where userinfoid=#{id}")
    public int delete_userinfoid(@Param("id") int userinfoid);

    /*
    * 添加管理员
    * */
    @Insert("insert into userinfo(userinfoid,userinfophone,userinfopassword,positionid,userinfostate) values(#{userinfoid},#{userinfophone},#{userinfopassword},#{positionid},#{userinfostate})")
    public int insert_userinfo(@Param("userinfoid") int userinfoid,@Param("userinfophone") String userinfophone,@Param("userinfopassword") String userinfopassword,@Param("positionid") int positionid,@Param("userinfostate") int userinfostate);

    /*
    * 查询所有前台用户
    * */
    @Select("select * from userinfo where positionid=152147")
    public List<userinfo> find_userinfoadmin();
}
