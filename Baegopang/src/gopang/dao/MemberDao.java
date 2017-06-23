package gopang.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;

import gopang.bean.ZipcodeBean;
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
	
	public List<ZipcodeBean> searchAddress(String dong){
		return sqlSessionFactory.openSession().selectList("searchAddress",dong);
	}
}