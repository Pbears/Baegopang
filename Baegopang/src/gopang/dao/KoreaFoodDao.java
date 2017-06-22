package gopang.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;

import gopang.bean.BrandBean;
import gopang.util.SqlSessionFactoryManager;

public class KoreaFoodDao {
private SqlSessionFactory sqlSessionFactory;

	public KoreaFoodDao() {
		sqlSessionFactory=SqlSessionFactoryManager.getSqlSessionFactory();
	}
	
	public List<BrandBean>selectKoreaFood(int brandNo){
		return sqlSessionFactory.openSession().selectList("selectKoreaFood",brandNo);
	}
	
	public Integer getKoreaFoodTotalRow(int brandNo){
		return sqlSessionFactory.openSession().selectOne("getKoreaFoodTotalRow",brandNo);
	}
	
	
}
