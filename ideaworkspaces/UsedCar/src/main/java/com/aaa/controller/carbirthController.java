package com.aaa.controller;

import com.aaa.entity.carbirth;
import com.aaa.entity.carseries;
import com.aaa.service.carbirthService;
import com.aaa.service.carseriesService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("carbirth")
public class carbirthController {
    @Resource
    carbirthService cservice;
    @Resource
    carseriesService carservice;

    /*
    * 查询所有年款
    * */
    @RequestMapping("/find_carbirth")
    public String find_carbirth(Model model){
        List<carbirth> list=cservice.find_carbirth();
        List<carbirth> rowlist=new ArrayList<carbirth>();
        for(int i=0;i<list.size();i++){
            carbirth c=list.get(i);
           carseries car=carservice.sel_carseriesid(c.getCarseriesid());
           c.setCar(car);
           rowlist.add(c);
        }
        int count=list.size();
        model.addAttribute("headcount",count);
        model.addAttribute("carbirth",rowlist);
        return "/jsp/carbirth";
    }

    /*
    * 查询所有的车系
    * */
    @RequestMapping("/find_carservice")
    public String find_carservice(Model model){
        List<carseries> list=carservice.find_carseries();
        model.addAttribute("carservice",list);
        return "/jsp/addcarbirth";
    }

    /*
    * 添加年款
    * */
    @RequestMapping("/insert_carbirth")
    public void insert_carbirth(String carbirthname,int carseriesid){
        int carbirthid=(int)((Math.random()*9+1)*100000);
        int count=cservice.insert_carbirth(carbirthid,carbirthname,carseriesid);
    }

    /*
    * 根据id查看年款
    * */
    @RequestMapping("/find_carbirthid")
    public String find_carbirthid(int carbirthid,Model model){
        List<carbirth> list=cservice.find_carbirthid(carbirthid);
        carseries c=carservice.sel_carseriesid(list.get(0).getCarseriesid());
        list.get(0).setCar(c);
        List<carseries> car=carservice.find_carseries();
        model.addAttribute("carseries",car);
        model.addAttribute("carbirth",list);
        return "/jsp/update_carbirth";
    }

    /*
    * 修改年款
    * */
    @RequestMapping("/update_carbirth")
    public void update_carbirth(int carbirthid,String carbirthname,int carseriesid){
       int count= cservice.update_carbirth(carbirthid,carbirthname,carseriesid);
        System.out.println(count);
    }
}
