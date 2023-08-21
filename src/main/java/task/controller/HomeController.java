package task.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import task.dto.Employee;
import task.dto.Signup;
import task.helper.Admin;
import task.service.HomeService;

@Controller
public class HomeController {
	@Autowired
	HomeService service;
@RequestMapping("/")
	public String home() {
		return "Login";
		
	}

//@RequestMapping("/loginform")
//public ModelAndView loginform(@ModelAttribute Admin admin) {
//	return service.loginform(admin);
//	// TODO Auto-generated method stub
//
//}
@RequestMapping("/loginform")
public ModelAndView loginform(@RequestParam String email,@RequestParam String password) {
	return service.loginform(email,password);
	// TODO Auto-generated method stub

}

@RequestMapping("/registrationform")
public ModelAndView registrationform(@ModelAttribute Employee employee) {
	return service.registrationform(employee);
	// TODO Auto-generated method stub

}

@RequestMapping("/fetchById")
public ModelAndView fetchById(@RequestParam int id) {
	return service.fetchById(id);
	// TODO Auto-generated method stub

}

@RequestMapping("/fetchAll")
public ModelAndView fetchAll() {
	return service.fetchAll();
	// TODO Auto-generated method stub

}
@RequestMapping("/deleteById")
public ModelAndView deleteById(@RequestParam int id) {
	return service.deleteById(id);
	// TODO Auto-generated method stub

}


@RequestMapping("/updateById")
public ModelAndView updateById(@RequestParam int id) {
	return service.updateById(id);
	// TODO Auto-generated method stub

}


@RequestMapping("/signup")
public ModelAndView signup(@ModelAttribute Signup signup) {
	
	
	return service.signup(signup);
	// TODO Auto-generated method stub

}

@RequestMapping("/deleteAll")
public ModelAndView deleteAll( ) {
	return service.deleteAll();
	// TODO Auto-generated method stub

}
//deleteBySelect

@RequestMapping("/deleteBySelect")
public ModelAndView deleteBySelect(@RequestParam("id") List<Integer> id ) {
	return service.deleteBySelect(id);
	// TODO Auto-generated method stub

}
}
