package com.aaa.controller;

import com.aaa.entity.position;
import com.aaa.entity.userinfo;
import com.aaa.service.positionService;
import com.aaa.service.userinfoService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("userinfo")
public class userinfoController {

    @Resource
    userinfoService uservice;

    @Resource
    positionService pservice;

    /*
    * 后台管理员登陆
    * */
    @RequestMapping("/find_oneuserinfo")
    public String find_oneuserinfo(String username, String password, HttpSession session,Model model)throws Exception{
        List<userinfo> list=uservice.find_oneuserinfo(username,password);
        if(list.size()>0&&list!=null){
            session.setAttribute("userinfophone",list);
           return "/jsp/index";
        }else{
            return "/jsp/login";
        }
    }
    /*
    * 用户退出时清除session
    * */
    @RequestMapping("/queit")
    public String queit(HttpServletRequest request,HttpServletResponse response)throws Exception{
        HttpSession session=request.getSession();
        session.removeAttribute("userinfophone");
        return "/jsp/login";
    }

    /*
    * 查询管理员
    * */
    @RequestMapping("/find_userinfo")
    public String find_userinfo(Model model){
        List<userinfo> list=uservice.find_userinfo();
        List<userinfo> twolist=new ArrayList<userinfo>();
        for(int i=0;i<list.size();i++){
            userinfo u=list.get(i);
            position newlist=pservice.find_position(u.getPositionid());
            u.setPset(newlist);
            twolist.add(u);
        }
        int count=twolist.size();
        model.addAttribute("userinfo",twolist);
        model.addAttribute("headcount",count);
        return "/jsp/member-list";
    }

    /*
    * 修改管理员状态
    * */
    @RequestMapping("/update_userinfostate")
    @ResponseBody
    public boolean update_userinfostate(int userinfoid,int userinfostate,HttpSession session){
        List<userinfo> u= (List<userinfo>) session.getAttribute("userinfophone");
        int count=uservice.update_userinfostate(userinfoid,userinfostate,u.get(0).getUserinfoid());
        if(count>0){
            return true;
        }else{
            return false;
        }
    }

    /*
    * 删除管理员
    * */
    @RequestMapping("/delete_userinfoid")
    @ResponseBody
    public boolean delete_userinfoid(int userinfoid){
        int count=uservice.delete_userinfoid(userinfoid);
        if(count>0){
            return true;
        }else{
            return false;
        }
    }

    /*
    * 后台添加管理
    * */
    @RequestMapping("/insert_userinfo")
    @ResponseBody
    public void insert_userinfo(String userinfophone,int positionid,String userinfopassword,int userinfostate){
        int userinfoid=(int)((Math.random()*9+1)*100000);
        System.out.println(positionid);
        int headcount=uservice.insert_userinfo(userinfoid,userinfophone,userinfopassword,positionid,userinfostate);
    }

    /*
    * welcome的所有查询方法
    * */
    @RequestMapping("/find_ALL")
    public String find_All(){

        return "/jsp/welcome";
    }

    /*
    * 查询前台用户
    * */
    @RequestMapping("/find_userinfoadmin")
    public String find_userinfoadmin(Model model,HttpSession session){
        List<userinfo> list=uservice.find_userinfoadmin();
        List<userinfo> twolist=new ArrayList<userinfo>();
        for(int i=0;i<list.size();i++){
            userinfo u=list.get(i);
            position newlist=pservice.find_position(u.getPositionid());
            u.setPset(newlist);
            twolist.add(u);
        }
        int count=twolist.size();
        model.addAttribute("userinfo",twolist);
        model.addAttribute("headcount",count);
        return "/jsp/admin-list";
    }

}
