package egovframework.example.sample.service.impl;

import javax.naming.AuthenticationException;

import org.springframework.stereotype.Repository;


import egovframework.example.sample.service.LoginVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;


@Repository("loginDAO")
public class LoginDAO extends EgovAbstractDAO {

	public String insertSample(LoginVO vo) throws Exception {
		return (String) insert("loginDAO.insertSample", vo);
	}

	public LoginVO authenticate(String id, String password) throws Exception{
		LoginVO loginVO = new LoginVO();
		loginVO.setId(id);
		loginVO.setPassword(password);
		
		if (!("1".equalsIgnoreCase(id) && "1".equalsIgnoreCase(password))) {

			throw new AuthenticationException();
		}
		
		return loginVO;
	}

}