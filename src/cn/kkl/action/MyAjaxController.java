package cn.kkl.action;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.kkl.pojo.User;

@Controller
@RequestMapping(value="myajax.do")
public class MyAjaxController {
	
	@ResponseBody
	@RequestMapping(params="method=test1",method=RequestMethod.GET)
	public List<User> test1(String uname){
		System.out.println("******MyAjaxController.test()******");
		List<User> list= new ArrayList<User>();
		try {
			String uname2 = new String(uname.getBytes("iso8859-1"),"UTF-8");
			System.out.println(uname2);
			
			User user = new User();
			user.setUname("guodegang");
			user.setUpassword("123456");
			
			User user2 =new User();
			user2.setUname("red");
			user.setUpassword("123456");
			
			list.add(user);
			list.add(user2);
			
		} catch (UnsupportedEncodingException e) {
			System.out.println("编码格式不支持，请核实");
			e.printStackTrace();
		}
		return list;
	}
}
