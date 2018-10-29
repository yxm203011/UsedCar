package com.aaa.controller;

import com.aaa.entity.carbrand;
import com.aaa.entity.carseries;
import com.aaa.service.carbrandService;
import com.aaa.service.carseriesService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("carseries")
public class carseriesController {
    @Resource
    carseriesService cservice;

    @Resource
    carbrandService carbrandidservice;

    /*
    * 查询所有的车系
    * */
    @RequestMapping("/find_carseries")
    public String find_carseries(Model model){
        List<carseries> list=cservice.find_carseries();
        List<carseries> rowlist=new ArrayList<carseries>();
        for(int i=0;i<list.size();i++){
            carseries c=list.get(i);
            carbrand carbrandid=carbrandidservice.sel_carbrandid(c.getCarbrandid());
            c.setCar(carbrandid);
            rowlist.add(c);
        }
        int count=list.size();
        model.addAttribute("headcount",count);
        model.addAttribute("carseries",rowlist);
        return "/jsp/carseries";
    }

    /*
    * 查询所有的车辆品牌
    * */
    @RequestMapping("find_carbrandname")
    public String find_carbrandname(Model model){
        List<carbrand> list=carbrandidservice.find_carbrand();
        model.addAttribute("carbrand",list);
        return "/jsp/addcarseries";
    }

    /*
    * 添加车系
    * */
    @RequestMapping("/insert_carseries")
    public void insert_carseries(String carseriesname,int carbrandid){
        int carseriesid=(int)((Math.random()*9+1)*100000);
        int count=cservice.insert_carseries(carseriesid,carseriesname,carbrandid);
    }

    /*
    * 修改车系
    * */
    @RequestMapping("/update_carseries")
    public void update_carseries(int carseriesid,String carseriesname,int carbrandid){
        int count=cservice.update_carseries(carseriesid,carseriesname,carbrandid);
    }

    /*
    * 按照指定的id查询车系
    * */
    @RequestMapping("/find_carseriesid")
    public String find_carseriesid(int carseriesid,Model model){
        List<carseries> list=cservice.find_carseriesid(carseriesid);
        List<carseries> rowlist=new ArrayList<carseries>();
        List<carbrand> carbrandlist=carbrandidservice.find_carbrand();
        for(int j=0;j<list.size();j++){
            carseries c=list.get(j);
            carbrand carbrandid=carbrandidservice.sel_carbrandid(c.getCarbrandid());
            c.setCar(carbrandid);
            rowlist.add(c);
        }
        model.addAttribute("carbrand",carbrandlist);
        model.addAttribute("carseries",rowlist);
        return "/jsp/updatecarseries";
    }
}
