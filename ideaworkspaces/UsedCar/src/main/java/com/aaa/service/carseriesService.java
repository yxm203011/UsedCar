package com.aaa.service;

import com.aaa.dao.carseriesDAO;
import com.aaa.entity.carseries;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class carseriesService {
    @Resource
    carseriesDAO cdao;
    public List<carseries> find_carseries(){
        return cdao.find_carseries();
    }

    public int insert_carseries(int carseriesid,String carseriesname,int carbrandid){
        return cdao.insert_carseries(carseriesid,carseriesname,carbrandid);
    }

    public int update_carseries(int carseriesid,String carseriesname,int carbrandid){
        return cdao.update_carseries(carseriesid,carseriesname,carbrandid);
    }

    public List<carseries> find_carseriesid(int carseriesid){
        return cdao.find_carseriesid(carseriesid);
    }

    public carseries sel_carseriesid(int carseriesid){
        return cdao.sel_carseries(carseriesid);
    }
}
