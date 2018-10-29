package com.aaa.service;

import com.aaa.dao.carbrandDAO;
import com.aaa.entity.carbrand;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class carbrandService {

    @Resource
    carbrandDAO cdao;

    public List<carbrand> find_carbrand(){
        return cdao.find_carbrand();
    }

    public int insert_carbrand(carbrand c){
        return cdao.insert_carbrand(c);
    }

    public List<carbrand> find_carbrandid(int carbrandid){
        return cdao.find_carbrandid(carbrandid);
    }

    public int update_carbrand(carbrand c){
        return cdao.update_carbrand(c);
    }

    public carbrand sel_carbrandid(int carbrandid){
        return cdao.sel_carbrandid(carbrandid);
    }
}
