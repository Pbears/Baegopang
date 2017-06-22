package gopang.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;

import gopang.bean.BrandBean;
import gopang.util.SqlSessionFactoryManager;

public class FastFoodDao {
private SqlSessionFactory sqlSessionFactory;

	public FastFoodDao() {
		sqlSessionFactory=SqlSessionFactoryManager.getSqlSessionFactory();
	}
	
	public List<BrandBean>selectFastFood(int brandNo){
		return sqlSessionFactory.openSession().selectList("selectFastFood",brandNo);
	}
	
	public Integer getFastFoodTotalRow(int brandNo){
		return sqlSessionFactory.openSession().selectOne("getFastFoodTotalRow",brandNo);
	}
}
