package project.com.service;

import project.com.model.MemberDAO;
import project.com.model.MemberDAOimpl;
import project.com.model.MemberVO;

public class ProjectService {
	private MemberDAO dao;   
	public ProjectService() {
		System.out.println("TestService");
		dao = new MemberDAOimpl();
	}
	public MemberVO selectOne(MemberVO vo) {
		
		return dao.selectOne(vo);
	}

}
