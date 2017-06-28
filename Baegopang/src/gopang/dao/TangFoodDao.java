package gopang.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;

import gopang.bean.BrandBean;
import gopang.util.SqlSessionFactoryManager;

public class TangFoodDao {
private SqlSessionFactory sqlSessionFactory;

	public TangFoodDao() {
		sqlSessionFactory=SqlSessionFactoryManager.getSqlSessionFactory();
	}
	
	public List<BrandBean>selectTangFood(int brandNo){
		return sqlSessionFactory.openSession().selectList("selectTangFood",brandNo);
	}
}
