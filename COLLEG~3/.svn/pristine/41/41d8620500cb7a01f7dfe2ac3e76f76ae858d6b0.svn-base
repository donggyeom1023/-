package egovframework.example.sample.service.impl;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import egovframework.example.sample.service.EgovFileScrty;
import egovframework.example.sample.service.LoginService;
import egovframework.example.sample.service.LoginVO;
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

	@Override
	public LoginVO actionLogin(LoginVO vo) throws Exception {
		// 1. 입력한 비밀번호를 암호화한다.
				vo.getPassword();
				vo.getId();
				System.out.println(vo.getPassword());

				// 2. 아이디와 암호화된 비밀번호가 DB와 일치하는지 확인한다.
				LoginVO loginVO = loginDAO.actionLogin(vo);

				// 3. 결과를 리턴한다.
				if (loginVO != null && !loginVO.getId().equals("") && !loginVO.getPassword().equals("")) {
					return loginVO;
				} else {
					loginVO = new LoginVO();
				}

				return loginVO;
	}


	
}