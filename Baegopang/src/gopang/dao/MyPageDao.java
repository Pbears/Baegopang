package gopang.dao;


import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;

import gopang.bean.FoodOrderBean;
import gopang.util.SqlSessionFactoryManager;

public class MyPageDao {
private SqlSessionFactory sqlSessionFactory;

	public MyPageDao() {
		sqlSessionFactory=SqlSessionFactoryManager.getSqlSessionFactory();
	}
	public List<FoodOrderBean> selectMemberFoodOrder(String id){
		return sqlSessionFactory.openSession().selectList("selectMemberFoodOrder", id);
	}
	
	
}
