package gopang.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;

import gopang.bean.BrandBean;
import gopang.util.SqlSessionFactoryManager;

public class ChinaFoodDao {
private SqlSessionFactory sqlSessionFactory;

	public ChinaFoodDao() {
		sqlSessionFactory=SqlSessionFactoryManager.getSqlSessionFactory();
	}
	
	public List<BrandBean>selectChinaFood(int brandNo){
		return sqlSessionFactory.openSession().selectList("selectChinaFood",brandNo);
	}
	
	public Integer getChinaFoodtotalRow(int brandNo){
		return sqlSessionFactory.openSession().selectOne("getChinaFoodtotalRow",brandNo);
	}
	
	
}
