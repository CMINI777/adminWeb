package com.boot.controller;

import com.boot.pojo.MinichnJSONResult;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

/**
 * Created by minichn
 */
@Controller
@RequestMapping("/account")
public class AccountController {

    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    @RequestMapping("/executeLogin")
    @ResponseBody
    public MinichnJSONResult executeLogin(String loginname,String password, HttpSession session){
        String target = null;
        String account = null;
        if(loginname != null && password != null){
            account = "登录操作";
        }
        if(account == null){
            target = "login";
        }else{
            //session.setAttribute("admin",admin);
            target = "index";
        }
        return MinichnJSONResult.ok(target);
    }

    @GetMapping("/logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "login";
    }

    @RequestMapping("/index")
    public String index() {
        return "index";
    }

    @RequestMapping("/dataTable1")
    public String dataTable1() {
        return "dataTable1";
    }

    @RequestMapping("/dataTable2")
    public String dataTable2() {
        return "dataTable2";
    }

    @RequestMapping("/menus1")
    public String menus1() {
        return "menus1";
    }

    @RequestMapping("/menus2")
    public String menus2() {
        return "menus2";
    }

    @RequestMapping("/chartJs")
    public String chartJs() {
        return "chartJs";
    }

    @RequestMapping("/morris")
    public String morris() {
        return "morris";
    }

    @RequestMapping("/treeview")
    public String treeview() {
        return "treeview";
    }

}
