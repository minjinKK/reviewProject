package project.com.model;

import java.util.ArrayList;

public interface MemberDAO {
	public int insert(MemberVO vo);
	public MemberVO selectOne(MemberVO vo);
	public int delete(MemberVO vo);
}
