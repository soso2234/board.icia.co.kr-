package com.icia.web.dao;



import java.util.List;

import org.springframework.stereotype.Repository;

import com.icia.web.model.PlanDate;
import com.icia.web.model.PlanMake;

@Repository("planDateDao")
public interface PlanDateDao 
{
   //일정추가(join3)
   public int planDateInsert2(PlanDate planDate); 
   
   //일정조회(myPlan)
   public PlanDate planDateSelect2(String userId2);
   
   public List<PlanDate> planList(PlanDate planDate);
}