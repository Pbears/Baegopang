package gopang.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import gopang.bean.FoodOrderBean;
import gopang.bean.MemberBean;
import gopang.util.SqlSessionFactoryManager;

public class OrderDao {
	private SqlSessionFactory sqlSessionFactory;

	public OrderDao() {
		sqlSessionFactory=SqlSessionFactoryManager.getSqlSessionFactory();
	}
	
	public void orderInsert(FoodOrderBean bean){
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session.insert("orderInsert", bean);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.commit();
			session.close();
		}
	}
}
