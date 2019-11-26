package com.ak.bean;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/users")
public class UsersControllers {

	@RequestMapping(value="/info", method=RequestMethod.GET)
	public ModelAndView UsersInfo() {
		ModelAndView mav=new ModelAndView("page");
		mav.addObject("title" , "usersInfo");
		mav.addObject("userClickUsersInfo" , true);
		
		/*Users nUser=new Users();
		nUser.setUserId(1);
		nUser.setActive(true);
		mav.addObject("users", nUser);*/

		return mav;
	}
}
