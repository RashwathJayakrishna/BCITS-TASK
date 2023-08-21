package task.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.servlet.ModelAndView;

import task.dto.Employee;
import task.dto.Signup;
import task.repository.EmployeeRepository;
import task.repository.SignupRepository;

@Repository
public class HomeDao {

	@Autowired
	EmployeeRepository repository;
	
	
	public ModelAndView registrationform(Employee employee) {
		// TODO Auto-generated method stub
		 repository.save(employee);
		 
		 ModelAndView view=new ModelAndView();
		 
		 view.addObject("Register","Data Register Successfuly");
//		 view.setViewName("Register");
//		 fetchAll();
		 return  fetchAll();
	}
	
	public  ModelAndView fetchById(int id) {
		// TODO Auto-generated method stub
		 ModelAndView view=new ModelAndView();
		Optional<Employee> optional=repository.findById(id);
//		List<Employee>list= repository.findById(id);
//		Employee employee=repository.findById(id);
//		List<Employee>list=optional.getClass();
		if (optional.isPresent()) {
			 view.addObject("save","Data fetched successfuly");
//			 view.addObject("data",optional);
			 view.addObject("id",optional.get().getId());
				view.addObject("name",optional.get().getName());
		
				view.addObject("designation",optional.get().getDesignation());
				view.addObject("age",optional.get().getAge());
				view.addObject("email",optional.get().getEmail());
				view.addObject("gender",optional.get().getGender());
				view.addObject("mobile",optional.get().getMobile());
				view.addObject("address",optional.get().getAddress());
			 view.setViewName("ResultById");
			 return view;
		}
		 view.addObject("save","Data not found");
		 view.setViewName("FetchById");
		return view;
	}
	public ModelAndView fetchAll() {
		// TODO Auto-generated method 
		ModelAndView view=new ModelAndView();
		List<Employee> list=repository.findAll();
		System.out.println(list.size());
		if (list.isEmpty()) {
			view.addObject("save","Data not found");
//			view.addObject("size",list.size());
			 view.setViewName("Result");
			return view;
		}
//		 view.addObject("save","Data fetched successfuly");
		 view.addObject("data",list);
//		 view.addObject("size",list.size());
		 view.setViewName("Result");
		 return view;
	}
	public Optional<Employee> deleteById(int id) {
		// TODO Auto-generated method stub
	
		return repository.findById(id);
	}
	public void delete(int id) {
		// TODO Auto-generated method stub
		repository.deleteById(id);
//		repository.fetchBypwd();
	}
	public ModelAndView deleteAll() {
		// TODO Auto-generated method stub
		repository.deleteAll();
		ModelAndView view=new ModelAndView();
		view.addObject("save","All Data deleted successfuly");
		view.setViewName("Result");
		return view;
	}
	

}
