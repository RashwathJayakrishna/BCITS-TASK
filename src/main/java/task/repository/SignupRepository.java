package task.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import task.dto.Signup;

public interface SignupRepository extends JpaRepository<Signup, String> {

//	 Signup save(Signup signup);
//
//	 Signup findById(String email);

}
