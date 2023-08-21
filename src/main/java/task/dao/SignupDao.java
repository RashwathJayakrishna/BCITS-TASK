package task.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.servlet.ModelAndView;

import task.dto.Signup;
import task.repository.SignupRepository;

@Repository
public class SignupDao {

	@Autowired
	SignupRepository repository;
	public ModelAndView signup(Signup signup) {
		// TODO Auto-generated method stub
		repository.save(signup);
		ModelAndView view=new ModelAndView();
		view.addObject("save","signup created successfuly");
		view.setViewName("Login");
		return view;
	}
	public Optional<Signup> findByid(String email) {
		return repository.findById(email);
	}

}
