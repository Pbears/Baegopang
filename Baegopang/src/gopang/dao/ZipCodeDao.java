package gopang.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;

import gopang.bean.ZipcodeBean;
import gopang.util.SqlSessionFactoryManager;

public class ZipCodeDao {
	private SqlSessionFactory sqlSessionFactory;
	
	public ZipCodeDao(){
		sqlSessionFactory=SqlSessionFactoryManager.getSqlSessionFactory();
	}
	
	public List<ZipcodeBean> searchAddress(String dong){
		return sqlSessionFactory.openSession().selectList("searchAddress", dong);
	}
}