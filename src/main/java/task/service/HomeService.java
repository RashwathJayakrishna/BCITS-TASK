package task.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import task.dao.HomeDao;
import task.dao.SignupDao;
import task.dto.Employee;
import task.dto.Signup;
import task.helper.Admin;

@Service
public class HomeService {

	@Autowired
	HomeDao dao;
	@Autowired
	SignupDao signupDao;
//	public ModelAndView loginform(Admin admin) {
//		// TODO Auto-generated method stub
//		ModelAndView view=new ModelAndView();
//		if (admin.getEmail().equals("admin@gmail.com")) {
////			view.setViewName("Admin");
//			if (admin.getPassword().equals("Admin@123")) {
//				view.setViewName("Admin");
//				return view;
//			} else {
//				view.addObject("wrong","user enter password is wrong");
//				view.setViewName("Login");
//				return view;
//			}
//		} else {
//view.addObject("wrong","user enter email is wrong");
//view.setViewName("Login");
//return view;
//		}
////		return null;
//	}

	public ModelAndView registrationform(Employee employee) {
		// TODO Auto-generated method stub
		return dao.registrationform(employee);
	}

	public ModelAndView fetchById(int id) {
		// TODO Auto-generated method stub
//ModelAndView view=new ModelAndView();
//				List<Employee> list=dao.fetchById(id);
//				if (list.isEmpty()) {
//					 view.addObject("save","Data Not found");
//					 view.addObject("data",list);
//					 view.setViewName("Result");
//					 return view;
//				}
//					 view.addObject("save","Data fetched successfuly");
////					 view.addObject("data",list);
//					 view.setViewName("Result");
					 return dao.fetchById(id);
	}

	public ModelAndView fetchAll() {
		// TODO Auto-generated method stub
		return dao.fetchAll();
	}

	public ModelAndView deleteById(int id) {
		// TODO Auto-generated method stub
		ModelAndView view=new ModelAndView();
		Optional<Employee>optional=dao.deleteById(id);
		if (optional.isPresent()) {
			dao.delete(id);
			 view.addObject("save","Data deleted successfuly");
			
			 
//			 view.setViewName("DeleteById");
			 view.setViewName("Result");
			 return fetchAll();
		}
		 view.addObject("save","Data not found");
//		 view.setViewName("DeleteById");
		 view.setViewName("Result");
		return view;
	}

	public ModelAndView updateById(int id) {
		ModelAndView view=new ModelAndView();
		Optional<Employee>optional=dao.deleteById(id);
		if (optional.isPresent()) {
			view.addObject("1",1);
			 view.addObject("id",id);
			view.addObject("name",optional.get().getName());
	
			view.addObject("designation",optional.get().getDesignation());
			view.addObject("age",optional.get().getAge());
			view.addObject("email",optional.get().getEmail());
			view.addObject("gender",optional.get().getGender());
			view.addObject("mobile",optional.get().getMobile());
			view.addObject("address",optional.get().getAddress());
//			String simple="simple";
			
			 view.setViewName("Register");
			 return view;
		}
		 view.addObject("save","Data not found");
		 view.setViewName("UpdateById");
		return view;
	}

	public ModelAndView signup(Signup signup) {
		// TODO Auto-generated method stub
		return signupDao.signup(signup);
		
		
	}

	public ModelAndView loginform(String email, String password) {
		// TODO Auto-generated method stub
		ModelAndView view=new ModelAndView();
		Optional<Signup> optional=signupDao.findByid(email);
		if (optional.isPresent()) {
			
			if (password.equals(optional.get().getPassword())) {
				view.addObject("name",optional.get().getName());
				view.setViewName("Admin");
//				return view;
			} else {
				view.addObject("wrong","user enter password is wrong");
				view.setViewName("Login");
				return view;
			} 
		} else {
			view.addObject("wrong","couldn't find your Name");
			view.setViewName("Login");
			return view;
		}
		
		return view;

	}

	public ModelAndView deleteAll() {
		// TODO Auto-generated method stub
		return dao.deleteAll();
	}

	public ModelAndView deleteBySelect(List<Integer> id) {
		// TODO Auto-generated method stub
		for (Integer integer : id) {
			dao.delete(integer);
		}
		ModelAndView view=new ModelAndView();
		 view.addObject("save","Data deleted successfuly");
			
		 
//		 view.setViewName("DeleteById");
		 view.setViewName("Result");
		 return fetchAll();
	
	}



	
}
