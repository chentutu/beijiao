/**
 * 
 */
package com.beijiao.controller;


import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;




import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.beijiao.model.File;
import com.beijiao.model.PClass;
import com.beijiao.model.Policy;
import com.beijiao.page.Page;
import com.beijiao.service.PClassService;
import com.beijiao.service.PolicyService;

/**
 * @author cmy lh
 *time 4:54:52
 */
@Controller
@RequestMapping("/policy")
public class PolicyController {

	@Resource
	private PolicyService policyService;
	@Resource
	private PClassService pClassService;
	
	@RequestMapping("totest")
	private String test(){
		return "test";
	}
	
	
	/*
	 * all for user
	 * 
	 */
	
	/*topolicy*/
	@RequestMapping("toPolicy")
	public String selectPolicy(int policyId,Model model){
		Policy policy=policyService.selectPolicy(policyId);
		model.addAttribute("policy", policy);		
		return "policy";
		
	}
	/*toListPolicy*/
	@RequestMapping("toListPolicy")
	public String selectListPolicy(Model model,String pageNow){
		List<Policy> policys;
		Page page=null;
		int totalCount=policyService.getRecordCount();
		Map<String, Integer> map=new HashMap<String, Integer>();
		if(pageNow==null){
			page=new Page(1, totalCount);
			map.put("startPos", page.getStartPos());
    		map.put("pageSize", page.getPageSize());
    		policys=policyService.selectAllPolicy(map);
		}else{
			page=new Page(Integer.parseInt(pageNow), totalCount);
			map.put("startPos", page.getStartPos());
    		map.put("pageSize", page.getPageSize());
    		policys=policyService.selectAllPolicy(map);
		}
		model.addAttribute("page", page);
		model.addAttribute("policys", policys);	
		model.addAttribute("policys", policys);		
		return "policylist";
		
	}
	
	
	
	/*
	 * toPolicyType，to different policyDrade(dengji)
	 * */
	@RequestMapping("toPolicyType")
	public String selectPolicyType1(Model model,String polDrade,String pageNow){
		
		/*String polDrade1=null;
		try {
			polDrade1 = new String(polDrade.getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		System.out.println(polDrade+"等级分类");
		PClass hint=new PClass();
		hint.setpClassName(polDrade);
		model.addAttribute("hint", hint);
		List<Policy> policys;
		Page page=null;
		int totalCount=policyService.getRecordCountPlocyDrade(polDrade);
		if(pageNow==null){
			page=new Page(1, totalCount);
			Integer startPos =page.getStartPos();
			Integer pageSize =page.getPageSize();
    		policys=policyService.selectPolicyType1(polDrade, startPos, pageSize);
		}else{
			page=new Page(Integer.parseInt(pageNow), totalCount);
			Integer startPos =page.getStartPos();
			Integer pageSize =page.getPageSize();
    		policys=policyService.selectPolicyType1(polDrade, startPos, pageSize);
		}
		model.addAttribute("page", page);
		model.addAttribute("policys", policys);
		return "policydradelist";
	}
	
	/*
	 * 
	 * toPolicyArea,to different policyArea(quyu,diqu)
	 * 
	 * */
	@RequestMapping("toPolicyArea")
	public String selectPolicyArea(Model model,String area){
		
		Policy hint=new Policy();
		hint.setPolArea(area);
		model.addAttribute("hint", hint);
		List<Policy> areas=policyService.selectPolicyArea(area);
		model.addAttribute("areas", areas);		
		return "policylist";		
	}
	
	/*
	 * toIndustryPolicy,to different policyIndustry(hangye)
	 * 
	 * */
	@RequestMapping("toIndustryPolicy")
	public String selectIndustryPolicy(Model model,String pClassName,String pageNow){
		
		System.out.println(pClassName+"行业分类");
		PClass hint=new PClass();
		hint.setpClassName(pClassName);
		model.addAttribute("hint", hint);
		List<Policy> policys;
		Page page=null;
		int totalCount=policyService.getRecordCountIndustryPlocy(pClassName);
		if(pageNow==null){
			page=new Page(1, totalCount);
			Integer startPos =page.getStartPos();
			Integer pageSize =page.getPageSize();
    		policys=policyService.searchIndustryPlocy(pClassName, startPos,pageSize);
		}else{
			page=new Page(Integer.parseInt(pageNow), totalCount);
			Integer startPos =page.getStartPos();
			Integer pageSize =page.getPageSize();
    		policys=policyService.searchIndustryPlocy(pClassName, startPos,pageSize);
		}
		model.addAttribute("page", page);
		model.addAttribute("policys", policys);
		return "policylist";
	}
	
	@RequestMapping("toSearch")
	public String searchPolicy(Model model,String search,String pageNow){
		
		System.out.println("山东师范"+search);	
		PClass hint=new PClass();
		hint.setpClassName(search);
		model.addAttribute("hint", hint);
		List<Policy> policys;
		Page page=null;
		int totalCount=policyService.getRecordCountSearch(search);
		if(pageNow==null){
			page=new Page(1, totalCount);
			Integer startPos =page.getStartPos();
			Integer pageSize =page.getPageSize();
    		policys=policyService.searchPolicy(search, startPos, pageSize);
		}else{
			page=new Page(Integer.parseInt(pageNow), totalCount);
			Integer startPos =page.getStartPos();
			Integer pageSize =page.getPageSize();
    		policys=policyService.searchPolicy(search, startPos, pageSize);
		}
		model.addAttribute("page", page);
		model.addAttribute("policys", policys);
		return "searchpolicy";
	}
	
	
	/*
	 * all for admin
	 * 
	 */
	
	/*
	 * to see policy for admin
	 * */
	@RequestMapping("adminPolicy")
	public String selectAdminPolicy(int policyId,Model model){
		Policy policy=policyService.selectPolicy(policyId);
		model.addAttribute("policy", policy);		
		return "admin/policy_detail";
		
	}
	
	/*allPolicy*/
	@RequestMapping("allPolicy")
	public String selectAllPolicy(Model model, String pageNow){
		List<Policy> policys;
		Page page=null;
		int totalCount=policyService.getRecordCount();
		Map<String, Integer> map=new HashMap<String, Integer>();
		if(pageNow==null){
			page=new Page(1, totalCount);
			map.put("startPos", page.getStartPos());
    		map.put("pageSize", page.getPageSize());
    		policys=policyService.selectAllPolicy(map);
		}else{
			page=new Page(Integer.parseInt(pageNow), totalCount);
			map.put("startPos", page.getStartPos());
    		map.put("pageSize", page.getPageSize());
    		policys=policyService.selectAllPolicy(map);
		}
		for(int i=0;i<policys.size();i++){
			if(policys.get(i).getPolTitle().length()>40){
				policys.get(i).setPolTitle(policys.get(i).getPolTitle().substring(0, 39));
			}
	     }
		model.addAttribute("page", page);
		model.addAttribute("policys", policys);		
		return "admin/policy";
		
	}
	
	/*addPolicy*/
	@RequestMapping("addPolicy")
	public String addPolicy(Policy policy,HttpServletRequest request){
		
		policy.setPolTime(String.valueOf(policy.getPolTime()));
	/*	UpAndDownload upFile=new UpAndDownload();
		String filename=upFile.doUploadDoc(file, request);
		policy.setPolFile(filename);*/
		int n=policyService.addPolicy(policy);				
		if(n!=0){
		   return "forward:allPolicy";
		}else{
		   return "forward:allPolicy";
		}
		
	}
	/*deletePolicy*/
	@RequestMapping("deletePolicy")
	public String deletePolicy(int policyId){
		int n=policyService.deletePolicy(policyId);				
		if(n!=0){
		   return "forward:allPolicy";
		}else{
		   return "forward:allPolicy";
		}
		
	}
	/*updatePolicy*/
	@RequestMapping("updatePolicy")
	public String updatePolicy(String policyContent){
		int n=policyService.changePolicy(policyContent);
		if(n!=0){
			   return "forward:toListPolicy";
			}else{
			   return "login";
			}
	}
	
	
	
	
	
	
	/*
	 * 
	 * WebApp policy
	 * 
	 */
	
	/*
	 * 所有政策
	 */
	@ResponseBody 
	@RequestMapping("app_allPolicy")
	public List<Policy> app_allPolicy(HttpServletRequest request, HttpServletResponse response){
		response.addHeader("Access-Control-Allow-Origin","*");//'*'表示允许所有域名访问，可以设置为指定域名访问，多个域名中间用','隔开
		//System.out.println("测试");
		List<Policy> policys=policyService.selectAllPolicy_app();
		//System.out.println(policys);
		return policys;
	}
	
	/*
	 * 所有等级政策
	 */
	@ResponseBody 
	@RequestMapping("app_dradePolicy")
	public List<Policy> app_dradePolicy(HttpServletRequest request, HttpServletResponse response,String polDrade){
		response.addHeader("Access-Control-Allow-Origin","*");//'*'表示允许所有域名访问，可以设置为指定域名访问，多个域名中间用','隔开
		String polDrade1=null;
		try {
			polDrade1 = new String(polDrade.getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		List<Policy> policys=policyService.selectPolicyType_app(polDrade1);
		return policys;
	}
	
	
	/*
	 * 政策来源
	 */
	@ResponseBody 
	@RequestMapping("app_sourcePolicy")
	public List<Policy> app_SourcePolicy(HttpServletRequest request, HttpServletResponse response,String source){
		response.addHeader("Access-Control-Allow-Origin","*");//'*'表示允许所有域名访问，可以设置为指定域名访问，多个域名中间用','隔开
		System.out.println(source);
		if(source.equals("所有政策")){
			//System.out.println("test");
			List<Policy> policys=policyService.selectAllPolicy_app();
			return policys;
		}else{
			List<Policy> policys=policyService.selectPolicySource_app(source);
			return policys;
		}
	}
	
	/*
	 * 所有行业政策
	 */
	@ResponseBody 
	@RequestMapping("app_IndustryPolicy")
	public List<Policy> app_IndustryPolicy(HttpServletRequest request, HttpServletResponse response,String pClassName){
		response.addHeader("Access-Control-Allow-Origin","*");//'*'表示允许所有域名访问，可以设置为指定域名访问，多个域名中间用','隔开
		System.out.println(pClassName);
		List<Policy> policys=policyService.searchIndustryPlocy_app(pClassName);
		System.out.println(policys);
		return policys;
		
	}
	
	/*
	 * 政策查询
	 */
	@ResponseBody 
	@RequestMapping("app_searchPolicy")
	public List<Policy> app_searchPolicy(HttpServletRequest request, HttpServletResponse response,String search){	
		response.addHeader("Access-Control-Allow-Origin","*");//'*'表示允许所有域名访问，可以设置为指定域名访问，多个域名中间用','隔开
		List<Policy> policys=policyService.searchPolicy_app(search);
		return policys;
	}
	
	
	/*
	 * 政策详细
	 */
	@ResponseBody 
	@RequestMapping("app_toPolicy")
	public Policy app_toPolicy(HttpServletRequest request, HttpServletResponse response,String policyId){	
		response.addHeader("Access-Control-Allow-Origin","*");//'*'表示允许所有域名访问，可以设置为指定域名访问，多个域名中间用','隔开
		Policy policy=policyService.selectPolicy(Integer.parseInt(policyId));
		System.out.println("测试");
		return policy;
	}
	
	
}
