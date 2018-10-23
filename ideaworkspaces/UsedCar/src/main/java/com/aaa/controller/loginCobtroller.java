package com.aaa.controller;

import com.aaa.service.userphoneservice;
import com.aaa.util.sms;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("login")
public class loginCobtroller {

    @Resource
    userphoneservice uservice;

    String userphone="";

    /*
    * 前台验证码
    * */
    @RequestMapping("/login")
    @ResponseBody
    public String login(String phone)  {
        String code=String.valueOf((int)((Math.random()*9+1)*100000));
        sms.getVerificationCode(phone,"【嘟嘟二手车】尊敬的用户，您的验证码为"+code);
        return code;
    }

    @RequestMapping(value="/disembark")
    @ResponseBody
    public int disembark(String phone){
        List<com.aaa.entity.userphone> list =uservice.seluserphone(phone);
        userphone=phone;
        if(list.size()>0&&list!=null){
            return 1;
        }else
            {
            int id=(int)((Math.random()*9+1)*100000);
            int count=uservice.adduserphone(id,phone);
                return count;
        }

    }

    @RequestMapping(value="/selall")
    public String selall(HttpSession s){
        s.setAttribute("userphone",userphone);
        return "/index";
    }

    @RequestMapping(value="delsession")
    public void delsession(HttpServletRequest request,HttpServletResponse response)throws Exception{
        HttpSession session=request.getSession();
        session.invalidate();
        response.sendRedirect("/index.jsp");
    }

}
