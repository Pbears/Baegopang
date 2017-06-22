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
	
	public List<BrandBean>selectPizza(int pizza){
		return sqlSessionFactory.openSession().selectList("selectChicken",pizza);
	}
	
	public Integer getPizzaTotalRow(int pizza){
		return sqlSessionFactory.openSession().selectOne("getPizzaTotalRow",pizza);
	}
}
