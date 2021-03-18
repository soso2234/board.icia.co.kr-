package com.icia.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.icia.web.service.KakaoService;

@Controller
public class KakaoController {
    @Autowired
    private KakaoService kakaoService;

    @RequestMapping("/view/index")
    public String home(@RequestParam(value = "code", required = false) String code) throws Exception{
        System.out.println("#########" + code);
        String access_Token = kakaoService.getAccessToken(code);
        System.out.println("###Token넘기기~#### : " + access_Token);
        return "/view/index";
    }
}