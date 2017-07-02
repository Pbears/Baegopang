package gopang.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import gopang.bean.MemberBean;
import gopang.util.SqlSessionFactoryManager;

public class MemberDao {
	private SqlSessionFactory sqlSessionFactory;
	
	public MemberDao(){
		sqlSessionFactory=SqlSessionFactoryManager.getSqlSessionFactory();
	}
	
	public boolean idCheck(String id){
		String userId = sqlSessionFactory.openSession().selectOne("idCheck", id);
		return id.equals(userId)?true:false;
	}
	
	public boolean pwCheck(String id, String pw){
		String userPw = sqlSessionFactory.openSession().selectOne("pwCheck", id);
		return pw.equals(userPw)?true:false;
	}
	
	public void memberInsert(MemberBean bean){
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session.insert("memberInsert", bean);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.commit();
			session.close();
		}
	}
	
	public MemberBean selectMember(String id) throws Exception{
		return sqlSessionFactory.openSession().selectOne("selectMember", id);
	}
	
	public void updateMember(MemberBean bean){
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session.update("memberUpdate", bean);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.commit();
			session.close();
		}
	}
}