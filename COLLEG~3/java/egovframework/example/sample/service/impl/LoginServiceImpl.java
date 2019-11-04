package egovframework.example.sample.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import egovframework.example.sample.service.LoginService;
import egovframework.example.sample.service.LoginVO;
import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;


@Service("loginService")
public class LoginServiceImpl extends EgovAbstractServiceImpl implements LoginService{
	private static final Logger LOGGER = LoggerFactory.getLogger(LoginServiceImpl.class);
	
	@Resource(name = "loginDAO")
	private LoginDAO loginDAO;
	
	@Resource(name = "egovIdGnrService")
	private EgovIdGnrService egovIdGnrService;

	@Override
	public void insertSample(LoginVO vo)  throws Exception{
		loginDAO.insertSample(vo);
		
	}

	@Override
	public LoginVO authenticate(String id, String password) throws Exception {
		// TODO Auto-generated method stub
		return loginDAO.authenticate(id,password);
	}

	
}