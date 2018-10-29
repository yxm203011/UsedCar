package com.aaa.service;

import com.aaa.dao.carbirthDAO;
import com.aaa.entity.carbirth;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class carbirthService {
    @Resource
    carbirthDAO cdao;
    public List<carbirth> find_carbirth(){
        return cdao.find_carbirth();
    }

    public int insert_carbirth(int carbirthid,String carbirthname,int carseries){
        return cdao.insert_carbirth(carbirthid,carbirthname,carseries);
    }

    public List<carbirth> find_carbirthid(int carbirthid){
        return cdao.find_carbirthid(carbirthid);
    }

    public int update_carbirth(int carbirthid,String carbirthname,int carseriesid){
        return cdao.update_carbirth(carbirthid,carbirthname,carseriesid);
    }
}
