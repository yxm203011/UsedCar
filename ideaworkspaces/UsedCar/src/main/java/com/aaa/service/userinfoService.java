package com.aaa.service;

import com.aaa.dao.userinfoDAO;
import com.aaa.entity.userinfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class userinfoService {
    @Resource
    userinfoDAO udao;

    public List<userinfo> find_oneuserinfo(String userphone,String userpwd){
        return udao.find_oneuserinfo(userphone,userpwd);
    }

    public List<userinfo> find_userinfo(){
        return udao.find_userinfo();
    }

    public int update_userinfostate(int userinfoid,int userinfostate,int userinfoupid){
        return udao.update_userinfostate(userinfoid,userinfostate,userinfoupid);
    }

    public int delete_userinfoid(int userinfoid){
        return udao.delete_userinfoid(userinfoid);
    }

    public int insert_userinfo(int userinfoid,String userinfophone,String userinfopassword,int positionid,int userinfostate)
    {
        return udao.insert_userinfo(userinfoid,userinfophone,userinfopassword,positionid,userinfostate);
    }
    public List<userinfo> find_userinfoadmin(){
        return udao.find_userinfoadmin();
    }
}
