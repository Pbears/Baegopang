package gopang.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;

import gopang.bean.BrandBean;
import gopang.util.SqlSessionFactoryManager;

public class JockFoodDao {
private SqlSessionFactory sqlSessionFactory;

	public JockFoodDao() {
		sqlSessionFactory=SqlSessionFactoryManager.getSqlSessionFactory();
	}
	
	public List<BrandBean>selectJockFood(int brandNo){
		return sqlSessionFactory.openSession().selectList("selectJockFood",brandNo);
	}
	
	public Integer getJockFoodTotalRow(int brandNo){
		return sqlSessionFactory.openSession().selectOne("getJockFoodTotalRow",brandNo);
	}
	
	
}
