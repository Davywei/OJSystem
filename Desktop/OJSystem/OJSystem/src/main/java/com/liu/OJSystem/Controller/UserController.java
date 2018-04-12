package com.liu.OJSystem.Controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.liu.OJSystem.Service.IUserService;
import com.liu.OJSystem.Vo.ExecResult;
import com.liu.OJSystem.pojo.User;

@Controller
@RequestMapping("/User")
public class UserController {

	@Autowired
	private IUserService ius; 
	
	@RequestMapping("/queryUser")
	@ResponseBody
	public ExecResult queryUser(String position,String account,String password){
		User user=ius.queryUser(account);
	    ExecResult er = new ExecResult();
	    if((user==null)||(!user.getPosition().equals(position))||(!user.getPassword().equals(password))){
	    	er.setMsg("登录失败");
	    	er.setSuccess(false);
	    }else if("教师".equals(user.getPosition())){
	    	er.setMsg("教师登录");
	    	er.setSuccess(true);
	    }else {
	    	er.setMsg("学生登录");
	    	er.setSuccess(true);
	    }
		return er;
		
	} 
	
}
