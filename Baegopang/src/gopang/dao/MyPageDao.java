package gopang.dao;


import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;

import gopang.bean.FoodOrderBean;
import gopang.bean.ReplyBean;
import gopang.util.SqlSessionFactoryManager;

public class MyPageDao {
private SqlSessionFactory sqlSessionFactory;

	public MyPageDao() {
		sqlSessionFactory=SqlSessionFactoryManager.getSqlSessionFactory();
	}
	public List<FoodOrderBean> selectMemberFoodOrder(String id){
		return sqlSessionFactory.openSession().selectList("selectMemberFoodOrder", id);
	}
	
	public List<FoodOrderBean> selectMemberPoint(String id){
		return sqlSessionFactory.openSession().selectList("selectMemberPoint", id);
	}
	
	public List<ReplyBean> selectMemberReply(String id){
		return sqlSessionFactory.openSession().selectList("selectMemberReply", id);
	}
	
	
}
