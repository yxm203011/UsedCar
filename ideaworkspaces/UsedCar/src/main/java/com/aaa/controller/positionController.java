package com.aaa.controller;

import com.aaa.entity.position;
import com.aaa.entity.userinfo;
import com.aaa.service.positionService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("position")
public class positionController {
    @Resource
    positionService pservice;

    /*
    * 查询所有职位
    * */
    @RequestMapping("/find_Allposition")
    public String find_Allposition(Model model){
        List<position> list=pservice.find_Allposition();
        model.addAttribute("positionall",list);
        return "/jsp/member-add";
    }

    /*
    * 查询所有职位
    * */
    @RequestMapping("/find_Allpositionone")
    public String find_Allpositionone(Model model){
        List<position> list=pservice.find_Allposition();
        int headcount=list.size();
        model.addAttribute("headcount",headcount);
        model.addAttribute("positionall",list);
        return "/jsp/admin-role";
    }

    /*
    * 添加职位
    * */
    @RequestMapping("/insert_position")
    @ResponseBody
    public void insert_position(String positionname, String positiondescribe, HttpSession session){
        int id=(int)((Math.random()*9+1)*100000);
       List<userinfo> u= (List<userinfo>) session.getAttribute("userinfophone");
        position p=new position();
        p.setPositionid(id);
        p.setPositionname(positionname);
        p.setUserinfoid(u.get(0).getUserinfoid());
        p.setPositiondescribe(positiondescribe);
        int a=pservice.insert_position(p);
    }
    /*
    * 按照职位id查询
    * */
    @RequestMapping("/find_positionid")
    public String find_positionid(int positionid,Model model){
        List<position> list=pservice.find_positionid(positionid);
        model.addAttribute("position",list);
        return "/jsp/role-add";
    }

    /*
    * 修改职位信息
    * */
    @RequestMapping("/update_position")
    public String update(int positionid,String positiondescribe,String positionname,HttpSession session){
        List<userinfo> u= (List<userinfo>) session.getAttribute("userinfophone");
        int count=pservice.update_positionid(positionname,u.get(0).getUserinfoid(),positiondescribe,positionid);
        return "redirect:/position/find_Allpositionone";
    }


}
