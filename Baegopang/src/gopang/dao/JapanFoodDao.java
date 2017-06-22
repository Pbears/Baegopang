package gopang.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;

import gopang.bean.BrandBean;
import gopang.util.SqlSessionFactoryManager;

public class JapanFoodDao {
private SqlSessionFactory sqlSessionFactory;

	public JapanFoodDao() {
		sqlSessionFactory=SqlSessionFactoryManager.getSqlSessionFactory();
	}
	
	public List<BrandBean>selectJapanFood(int brandNo){
		return sqlSessionFactory.openSession().selectList("selectJapanFood",brandNo);
	}
	
	public Integer getJapnaFoodTotalRow(int brandNo){
		return sqlSessionFactory.openSession().selectOne("getJapnaFoodTotalRow",brandNo);
	}
	
	
}
