package gopang.dao;

import java.io.Closeable;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import gopang.bean.BrandBean;
import gopang.bean.MenuBean;
import gopang.bean.StoreBean;
import gopang.util.SqlSessionFactoryManager;

public class TotalDao {
private SqlSessionFactory sqlSessionFactory;

	public TotalDao() {
		sqlSessionFactory=SqlSessionFactoryManager.getSqlSessionFactory();
	}
	
	 private void closeSqlSession(Closeable c) {
	      try {
	         if(c != null) c.close();
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	   }
	
	public List<BrandBean>selectStoreByBrand(int brandNo){
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSessionFactory.openSession().selectList("selectStoreByBrand",brandNo);			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		} finally {
			closeSqlSession(sqlSession);
		}
	}
	
	public List<StoreBean> selectStoreInfo(String StoreName){
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSessionFactory.openSession().selectList("selectStoreInfo", StoreName);
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
			return sqlSessionFactory.openSession().selectList("selectChickenMenuByStore", storeName);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		} finally {
			closeSqlSession(sqlSession);
		}
	}
	
	
}
