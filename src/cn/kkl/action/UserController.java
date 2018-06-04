package cn.kkl.action;


import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import cn.kkl.pojo.User;
import cn.kkl.service.UserService;

@RequestMapping(value="/user.do")
@Component
@SessionAttributes({"uname","upassword"})
public class UserController{
	
	@Resource
	private UserService userService;

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	@RequestMapping(params="method=reg")
	public ModelAndView register(User user) {
		System.out.println("*****UserController.register()*******"+user.getUname());
		userService.add(user.getUname());
		String uname = user.getUname();
		String upassword =user.getUpassword();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("success");
		modelAndView.addObject("uname", uname);
		modelAndView.addObject("upassword", upassword);
		return modelAndView;
	}


}
