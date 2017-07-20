package gopang.dao;

import java.util.HashMap;

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
	
	public void updatePang(HashMap<Object, Object>map){
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session.insert("updatePang", map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.commit();
			session.close();
		}
	}
	
}
