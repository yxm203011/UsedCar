package com.aaa.controller;

import com.aaa.entity.carbrand;
import com.aaa.service.carbrandService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("carbrand")
public class carbrandController {
    @Resource
    carbrandService cservice;

    /*
    * 查询车辆品牌
    * */
    @RequestMapping("/find_carbrand")
    public String find_carbrand(Model model) {
        List<carbrand> list = cservice.find_carbrand();
        int headcount = list.size();
        model.addAttribute("headcount", headcount);
        model.addAttribute("carbrand", list);
        return "/jsp/carbrand";
    }

    /*
    * 图片上传
    * */
    @RequestMapping("/upload_carbrandicon")
    @ResponseBody
    public String upload_carbrandicon(MultipartFile[] picfile) throws IOException {
        String picValue = "";
        //上传文件
        for (MultipartFile uploadpics : picfile) {
            String originaFilename = uploadpics.getOriginalFilename();
            if (!originaFilename.equals("")) {
                picValue = UUID.randomUUID().toString()
                        + originaFilename.substring(originaFilename
                        .lastIndexOf("."));
                String lujing = "D:/ideaworkspaces/UsedCar/src/main/resources/static/Images/"
                        + picValue;
                File file = new File(lujing);
                uploadpics.transferTo(file);
            }
        }
        return picValue;
    }

    /*
    * 添加车辆品牌
    * */
    @RequestMapping("/insert_carbrand")
    public void insert_carbrand(String carbrandname,String carbrandlogoaram,String imgurl){
        int id=(int)((Math.random()*9+1)*100000);
        carbrand c=new carbrand();
        c.setCarbrandid(id);
        c.setCarbrandname(carbrandname);
        c.setCarbrandicon(imgurl);
        c.setCarbrandlogogram(carbrandlogoaram);
        int count=cservice.insert_carbrand(c);
    }

    /*
    * 根据编号查询车辆品牌
    * */
    @RequestMapping("/find_carbrandid")
    public String find_carbrandid(int carbrandid,Model model){
        List<carbrand> list=cservice.find_carbrandid(carbrandid);
        model.addAttribute("carbrand",list);
        return "/jsp/updata_carbrand";
    }

    /*
    * 修改车辆品牌
    * */
    @RequestMapping("/update_carbrand")
    public void update_carbrand(int carbrandid,String carbrandname,String carbrandlogoaram,String imgurl){
        carbrand c=new carbrand();
        c.setCarbrandid(carbrandid);
        c.setCarbrandname(carbrandname);
        c.setCarbrandicon(imgurl);
        c.setCarbrandlogogram(carbrandlogoaram);
        int count=cservice.update_carbrand(c);
    }
}
