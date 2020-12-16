package com.beer.macSim.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

    @RequestMapping("mypage.me")
    public String myPage(){
        return "member/myPage";
    }

    @RequestMapping("update.me")
    public String update(){
        return "member/update";
    }

    @RequestMapping("review.me")
    public String review(){
        return "member/review" ;
    }

    @RequestMapping("point.me")
    public String point(){
        return "member/point" ;
    }

    @RequestMapping("event.me")
    public String event(){
        return "member/event" ;
    }

    @RequestMapping("group.me")
    public String group(){
        return "member/group" ;
    }

    @RequestMapping("beer.me")
    public String beer(){
        return "member/beer" ;
    }

    @RequestMapping("category.me")
    public String category(){
        return "member/category" ;
    }

}
