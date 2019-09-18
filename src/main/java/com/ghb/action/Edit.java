package com.ghb.action;

import com.ghb.biz.UserBiz;
import com.ghb.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;


@Controller //此注释的含义是将该类设置成为浏览器提交的上来的类
@RequestMapping("/edit")
public class Edit {
//spring ioc    Object
   // @Autowired  通过构造的方法进行实例化
    @Resource//通过get/set的方法进行实例化
    private UserBiz biz;
    private User user;
    private  Map<String,Object> map=new HashMap<String,Object>();
    private String cong;
    private String dao;
    private int ftid;
    private String fname;
    private Integer count;
    private File ufile;


    //删除用户
    @RequestMapping(value="/delete.action")
    public @ResponseBody
    String back(HttpServletRequest request,
                @RequestParam(value="uid", required=true, defaultValue="empty")String uid){
        Integer in=biz.userdelt(uid);
        String a="0";
        count=biz.count();
        if(null!=in)
        {
            a=String.valueOf(in);
        }
        return a;
    }
    //文件上传
    @RequestMapping(value="/fileact.action", method= RequestMethod.POST)
    public ModelAndView fileact(MultipartFile fileact,HttpServletRequest request){
        System.out.println(fileact+"7/7/7/7/");
        ModelAndView mav = new ModelAndView();
        if(null!=fileact) {
            String filename = fileact.getOriginalFilename();
            System.out.println("获取到的文件名:" + filename);
            System.out.println("//" + fileact);
            String path=request.getSession().getServletContext().getRealPath("/");
            try {
                path = path.substring(0,path.indexOf("\\",13));
                System.out.println(path);
                fileact.transferTo(new File(path+"/src/main/resources/filename" + filename));
            } catch (IllegalStateException | IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            mav.setViewName("register");
        }
        return mav;
    }
}
