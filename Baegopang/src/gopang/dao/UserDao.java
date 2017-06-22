package gopang.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;

import gopang.bean.BrandBean;
import gopang.util.SqlSessionFactoryManager;

public class UserDao {
	private SqlSessionFactory sqlSessionFactory;
	
	public UserDao(){
		sqlSessionFactory=SqlSessionFactoryManager.getSqlSessionFactory();
	}
	
	public boolean loinCheck(String id, String pw){
		Object obj = sqlSessionFactory.openSession().selectOne("loginCheck", id);
		return obj != null && ((String)obj).equals(pw)?true:false;
	}
}
