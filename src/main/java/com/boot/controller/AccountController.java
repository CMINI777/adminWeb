package com.boot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

/**
 * Created by minichn
 */
@Controller
@RequestMapping("account")
public class AccountController {

    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    @PostMapping("/executeLogin")
    public String executeLogin(@RequestParam("loginname") String loginname, @RequestParam("password") String password, HttpSession session){
        String target = null;
        String account = null;
        if("" != loginname && "" != password){
            account = "执行登录查询的操作";
        }
        if(account == null){
            target = "login";
        }else{
            //session.setAttribute("admin",admin);
            target = "redirect:/account/index";
        }
        return target;
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

    @RequestMapping("/editors")
    public String editors() {
        return "editors";
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

}
