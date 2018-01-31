package member;

import org.apache.ibatis.session.SqlSession;

public class MemberDao {
	SqlSession sqlSession;
	
	public MemberDao() {
		sqlSession = MemberFactory.getFactory().openSession();
	}
	
	public MemberVo login(MemberVo vo) {

		System.out.println(vo.getMem_emp_code() + "zz");
		System.out.println(vo.getMem_pwd1() + "zz");
		
		MemberVo v = sqlSession.selectOne("member.loginId", vo);
		System.out.println(v);
		if(v != null) { //아이디 일치
			MemberVo v2 = sqlSession.selectOne("member.login", vo);
			
			if(v2 == null){ // 아이디 비밀번호 불일치
				vo.setMsg("비밀번호가 틀렸습니다");
			}else{ // 아이디 비밀번호 일치
				vo.setMsg("로그인 성공");
			}
		} else{ // 아이디 불일치
			vo.setMsg("일치하는 아이디가 없습니다.");
		}
		return vo;
	}
	
}
