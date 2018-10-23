package com.aaa.service;

import com.aaa.dao.positionDAO;
import com.aaa.entity.position;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class positionService {
    @Resource
    positionDAO pdao;

    public position find_position(int positionid){
        return pdao.find_poition(positionid);
    }

    public List<position> find_Allposition(){
        return pdao.find_Allposition();
    }

    public int insert_position(position p){
        return pdao.insert_position(p);
    }

    public List<position> find_positionid(int positionid){
        return pdao.find_positionid(positionid);
    }

    public int update_positionid(String positionname,int userinfoid,String positiondescribe,int positionid){
        return pdao.update_position(positionname,userinfoid,positiondescribe,positionid);
    }
}
