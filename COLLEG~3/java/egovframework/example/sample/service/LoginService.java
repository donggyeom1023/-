package egovframework.example.sample.service;

import java.util.List;
public interface LoginService {

	void insertSample(LoginVO vo) throws Exception;

	public LoginVO authenticate(String id, String password) throws Exception;
	
	
}
