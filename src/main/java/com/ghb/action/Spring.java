package com.ghb.action;

import com.ghb.biz.UserBiz;
import com.ghb.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller //此注释的含义是将该类设置成为浏览器提交的上来的类
@RequestMapping("/admin")
public class Spring {
//spring ioc    Object
   // @Autowired  通过构造的方法进行实例化
    @Resource//通过get/set的方法进行实例化
    private UserBiz biz;
    private  Map<String,Object> map=new HashMap<String,Object>();

    private String cong;
    private String dao;
    private int ftid;
    private String fname;
//    private String uname;
    private Integer page=1;//表示当前页数
    private Integer limit=2;  //每页的记录数
    private Integer count;   //表示总页数



    //登录
    @RequestMapping(value="/back.action")
    public ModelAndView back(HttpServletRequest request,
                             @RequestParam(value="uid", required=true, defaultValue="empty")String uid,
                             String upass){
        ModelAndView mav = new ModelAndView();
        User user= biz.login(uid,upass);
        if(null !=user){
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            mav.setViewName("back");
        }else {
            mav.setViewName("login");
        }
        return mav;
    }

    //登录的ajax
    @RequestMapping(value="/logajax.action", method= RequestMethod.POST, produces="application/json;charset=utf-8")
    public @ResponseBody
    String logajax(String uid){
        User user=biz.logajax(uid);
        String messagq;
        if(null!=user){
            messagq="1";
        }else{
            messagq="0";
        }
        return messagq;
    }

    //列表ajax
    @RequestMapping(value="/listajax.action", method= RequestMethod.GET, produces="application/json;charset=utf-8")
    public @ResponseBody Map<String, Object> listajax(Integer page, Integer limit, HttpServletRequest request){

        System.out.println("====" + request.getParameter("uname"));
        page=(page-1)*limit;
        Map<String,Object> hashMap=new HashMap<String,Object>();
        List<User> list =biz.libiao(page,limit);
        count=biz.count();
        System.out.println(count+"////"+list+"****");
        hashMap.put("code",0);
        hashMap.put("count",count);
        hashMap.put("msg","");
        hashMap.put("data",list);
        return hashMap;
    }



}
