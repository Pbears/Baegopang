package gopang.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;

import gopang.bean.BrandBean;
import gopang.util.SqlSessionFactoryManager;

public class DosirakDao {
private SqlSessionFactory sqlSessionFactory;

	public DosirakDao() {
		sqlSessionFactory=SqlSessionFactoryManager.getSqlSessionFactory();
	}
	
	public List<BrandBean>selectDosirak(int brandNo){
		return sqlSessionFactory.openSession().selectList("selectDosirak",brandNo);
	}
	
	public Integer getDodirakTotalRow(int brandNo){
		return sqlSessionFactory.openSession().selectOne("getDodirakTotalRow",brandNo);
	}
	
	
}
