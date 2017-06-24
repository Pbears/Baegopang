package gopang.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;

import gopang.bean.BrandBean;
import gopang.util.SqlSessionFactoryManager;

public class PizzaDao {
private SqlSessionFactory sqlSessionFactory;

	public PizzaDao() {
		sqlSessionFactory=SqlSessionFactoryManager.getSqlSessionFactory();
	}
	
	public List<BrandBean>selectPizza(int brandNo){
		return sqlSessionFactory.openSession().selectList("selectPizza",brandNo);
	}
	
	public Integer getPizzaTotalRow(int brandNo){
		return sqlSessionFactory.openSession().selectOne("getPizzaTotalRow",brandNo);
	}
}
