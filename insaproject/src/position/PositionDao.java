package position;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

public class PositionDao {

	SqlSession sqlSeesion;
	
	public PositionDao(){
		sqlSeesion = PositionFactory.getFactory().openSession();
	}
	public String insert(PositionVo vo){
		String msg = "정상적으로 저장되었습니다.";
		try {
			
			int r = sqlSeesion.insert("position_regi.insert",vo);
			if(r<1) msg = "저장중 오류발생";
			sqlSeesion.commit();
		} catch (Exception e) {
			e.printStackTrace();
			sqlSeesion.rollback();
			msg = "저장중 예외 발생...";
		}
		
		return msg;
	}
	public List<PositionVo> select(PositionVo vo){
		List<PositionVo>list = sqlSeesion.selectList("position_regi.select",vo);
		
		return list;
	}
	public String delete(PositionVo vo){
		String msg = "정상적으로 삭제되었습니다.";
		System.out.println(vo.getPos_code());
		try {
			int r = sqlSeesion.delete("position_regi.delete",vo);
			
			if(r<1){
				msg = "삭제중 오류발생";
				
			}	
			sqlSeesion.commit();
		} catch (Exception e) {
			msg="삭제중 예외발생";
			e.printStackTrace();
			sqlSeesion.rollback();
		}
		
		return msg;
	}
	public String modify(PositionVo vo){
		String msg = "정상적으로 수정되었습니다.";
		try {
			int r = sqlSeesion.update("position_regi.modify",vo);
			
			if(r<1){
				msg = "수정중 오류발생";
				
			}	
			sqlSeesion.commit();
		} catch (Exception e) {
			msg="수정중 예외발생";
			e.printStackTrace();
			sqlSeesion.rollback();
		}
		
		return msg;
	}
	
}
