package com.beer.macSim.member.controller;

import com.beer.macSim.member.model.service.MemberService;
import com.beer.macSim.member.model.vo.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;


@Controller
public class MemberController {

    @Autowired
    private MemberService mService;


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

    @RequestMapping("memberUpdate.me")
    public String memberUpdate(Member m, Model model, HttpSession session){

        int result =mService.updateMember(m);

        if(result>0){
            // 세션에 담겨있던 loginUser의 Member객체 갱신된 객체로 변경해야됨!

            session.setAttribute("alertMsg","회원정보변경에 성공했습니다");
            return "redirect:update.me";
        }else{
            session.setAttribute("errorMsg","회원정보변경에 실패했습니다");
            return "common/errorPage";
        }

    }

    @RequestMapping("memberDelete.me")
    public String memberDelete(String userPwd,HttpSession session){

        int result = mService.deleteMember(userPwd);
        if(result>0){ // 성공
            session.removeAttribute("loginUser");
            session.setAttribute("alertMsg","회원 탈퇴에 성공했습니다");
            return "redirect:/";
        }else{ // 실패
            session.setAttribute("errorMsg","회원 탈퇴에 실패했습니다");
            return "common/errorPage";
        }

    }

    
    @RequestMapping("enrollForm.me")
    public String enrollForm() {
    	return "member/enrollForm";
    }

    @RequestMapping("loginForm.me")
    public String loginForm() {
    	return "member/loginForm";
    }
    
    @RequestMapping("idFindForm.me")
    public String idFindForm() {
    	return "member/idFindForm";
    }
    
    @RequestMapping("pwdFindForm.me")
    public String pwdFindForm() {
    	return "member/pwdFindForm";
    }
    
    @RequestMapping("agreeForm.me")
    public String agreeForm() {
    	return "member/agreeForm";
    }
    
}










