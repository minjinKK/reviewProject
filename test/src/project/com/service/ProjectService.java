package project.com.service;

import java.util.ArrayList;

import project.com.model.MemberDAO;
import project.com.model.MemberDAOimpl;
import project.com.model.MemberVO;
import project.com.model.ScoreDAO;
import project.com.model.ScoreDAOimpl;
import project.com.model.ScoreVO;

public class ProjectService {
	
	private MemberDAO mdao;   
	private ScoreDAO sdao;
	
	public ProjectService() {
		System.out.println("ProjectService");
		mdao = new MemberDAOimpl();
		sdao = new ScoreDAOimpl();
	}
	public MemberVO selectOne(MemberVO vo) {
		
		return mdao.selectOne(vo);
	}
	public ArrayList<ScoreVO> rateTotal(){
		return sdao.rateTotal();
	}
	public ArrayList<ScoreVO> rateTaste(){
		return sdao.rateTaste();
	}
	public ArrayList<ScoreVO> ratePrice(){
		return sdao.ratePrice();
	}
	public ArrayList<ScoreVO> rateDistance(){
		return sdao.rateDistance();
	}
	public ArrayList<ScoreVO> rateCircul(){
		return sdao.rateCircul();
	}
	

}
