package resi;

import org.apache.ibatis.session.SqlSession;

public class LicenseDao {
	
	
	SqlSession sqlSession;
	public LicenseDao(){
		sqlSession  = BoardFactory.getFactory().openSession();
	}
	
	
	public String insert(LicenseVo vo){
		String msg = "정상입력 되었습니다.";
			try {
				int r = sqlSession.insert("license.insert", vo);
				if(r<1) msg = "저장중 오류발생......";
				sqlSession.commit();
			} catch (Exception ex) {
					sqlSession.rollback();
					msg = "저장중 예외발생.......!";
					ex.printStackTrace();
			}		
		
		
		return msg;
	}
	
	
}
