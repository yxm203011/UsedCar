package com.aaa.service;

import com.aaa.dao.userphonedao;
import com.aaa.entity.userphone;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class userphoneservice {

    @Resource
    userphonedao udao;

    public int adduserphone(int id,String phone){
        return udao.adduserphone(id,phone);
    }
    public List<userphone> seluserphone(String phone){
        return udao.seluserphone(phone);
    }
}
