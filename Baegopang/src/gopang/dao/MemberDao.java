package gopang.dao;

import org.apache.ibatis.session.SqlSessionFactory;

import gopang.util.SqlSessionFactoryManager;

public class MemberDao {
	private SqlSessionFactory sqlSessionFactory;
	
	public MemberDao(){
		sqlSessionFactory=SqlSessionFactoryManager.getSqlSessionFactory();
	}
	
	public boolean idCheck(String id){
		String userId = sqlSessionFactory.openSession().selectOne("idCheck", id);
		return userId.equals(id)?true:false;
	}
	
	public boolean pwCheck(String id, String pw){
		String userPw = sqlSessionFactory.openSession().selectOne("pwCheck", id);
		return userPw.equals(pw);
	}
}