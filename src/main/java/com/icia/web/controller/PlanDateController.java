package com.icia.web.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.icia.common.util.StringUtil;
import com.icia.web.model.PlanDate;
import com.icia.web.model.PlanMake;
import com.icia.web.model.Response;
import com.icia.web.service.PlanDateService;
import com.icia.web.util.CookieUtil;
import com.icia.web.util.HttpUtil;

@Controller("PlanDateController")
public class PlanDateController {
   
   private static Logger logger = LoggerFactory.getLogger(PlanDateController.class);
   
   //쿠키명
   @Value("#{env['auth.cookie.name']}")
   private String AUTH_COOKIE_NAME; 
   
   @Autowired
   private PlanDateService planDateService;


   @RequestMapping(value="/board2/myPlan")
   public String myPlan(ModelMap model,HttpServletRequest request, HttpServletResponse response)
   {
       String userId2 = CookieUtil.getHexValue(request, AUTH_COOKIE_NAME);
       PlanDate planDate = new PlanDate();

      List<PlanDate> planlist = null;
      
      
      if(userId2 != null)
      {      
         planDate.setUserId2(userId2);
         
         planlist =  planDateService.planList(planDate);
      }
      
      

       model.addAttribute("userId2", userId2);
       model.addAttribute("planlist", planlist);

       
       return "/board2/myPlan";
       
   }

   

   // planDate 테이블에 넣기
   @RequestMapping(value="/planDate/planInsert2", method=RequestMethod.POST)

   public String planInsert2(ModelMap model , HttpServletRequest request, HttpServletResponse response) {
      
      int i=1;
      String userId2 = CookieUtil.getHexValue(request, AUTH_COOKIE_NAME);
       long pNoSeq2 = HttpUtil.get(request, "pNoSeq", (long)0);

       String pStart = HttpUtil.get(request, "pStart", "");
       String pEnd = HttpUtil.get(request, "pEnd", "");
       long pStartNum = Long.parseLong(pStart);
       long pEndNum = Long.parseLong(pEnd);
       
       
       PlanDate planDate = new PlanDate();
       

       
      
       if(pStart != null && pEnd != null)
       {                    
          for(i=1 ; i<=(pEndNum-pStartNum)+1 ; i++)
          {
             planDate.setpNoSeq2(pNoSeq2);
             planDate.setUserId2(userId2);
             
             HashMap<String, String> pDay = new HashMap<String, String>();
             pDay.put("Day" , HttpUtil.get(request, "pDay"+i , ""));
             planDate.setpDay(pDay.get("Day"));
             
             
             request.setAttribute("pDay"+i, pDay);
//////////////////////////////////////////////////////////////////////////////////////////////////////////        
             HashMap<String, String> place_split = new HashMap<String, String>();
             place_split.put("place_split1", HttpUtil.get(request, "location"+i, ""));   //day1의 일정을 배열로 담는다
             
             logger.debug("+++++++++++++++++++++++++++++++");
             logger.debug("+++++++++ pPlace = [" + place_split.get("place_split1") + "] +++++++++");
             
             for(int j=0 ; j<place_split.get("place_split1").split(" ").length ; j++)      //출력할 장소가 들어있는 배열의 길이 만큼 반복해야함
             {
                planDate.setpPlace(place_split.get("place_split1").split(" ")[j]);
                
                planDateService.planDateInsert2(planDate);
                
                
             }
             
             request.setAttribute("location"+i, place_split.get("place_split1"));   //pPlace+i는 배열인 상태로 존재한다
          }
          
          
          
       }
       

       model.addAttribute("pNoSeq2", pNoSeq2);
       model.addAttribute("userId2", userId2);
       model.addAttribute("pStart", pStart);
       model.addAttribute("pEnd", pEnd);
       model.addAttribute("pStartNum", pStartNum);
       model.addAttribute("pEndNum", pEndNum);
       
       
       return "/travel/mainHome";
   }
   
   
}