package gopang.dao;

import java.io.Closeable;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import gopang.bean.BrandBean;
import gopang.bean.MenuBean;
import gopang.util.SqlSessionFactoryManager;

public class StoreDao {
private SqlSessionFactory sqlSessionFactory;
	
	public StoreDao() {
		sqlSessionFactory=SqlSessionFactoryManager.getSqlSessionFactory();
	}
	 private void closeSqlSession(Closeable c) {
	      try {
	         if(c != null) c.close();
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	   }
	 
	public List<BrandBean> selectSearchStore(HashMap<String, String> map){
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSessionFactory.openSession().selectList("selectSearchStore",map);			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		} finally {
			closeSqlSession(sqlSession);
		}
	}
	
	public List<MenuBean> selectChickenMenuByStore(String storeName){
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSessionFactory.openSession().selectList("selectChickenMenuByStore",storeName);			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		} finally {
			closeSqlSession(sqlSession);
		}
	}
}
