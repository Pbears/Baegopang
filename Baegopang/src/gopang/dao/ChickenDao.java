package gopang.dao;

import java.io.Closeable;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import gopang.bean.BrandBean;
import gopang.bean.MenuBean;
import gopang.bean.StoreBean;
import gopang.util.SqlSessionFactoryManager;

public class ChickenDao {
private SqlSessionFactory sqlSessionFactory;

	public ChickenDao() {
		sqlSessionFactory=SqlSessionFactoryManager.getSqlSessionFactory();
	}
	
	 private void closeSqlSession(Closeable c) {
	      try {
	         if(c != null) c.close();
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	   }
	
	public List<BrandBean>selectChicken(int brandNo){
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSessionFactory.openSession().selectList("selectChicken",brandNo);			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		} finally {
			closeSqlSession(sqlSession);
		}
	}
	
	public Integer getChickenTotalRow(int brandNo){
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSessionFactory.openSession().selectOne("getChickenTotalRow",brandNo);		
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		} finally {
			closeSqlSession(sqlSession);
		}
	}
	
	public List<StoreBean> selectChickenStore(int brandNo){
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSessionFactory.openSession().selectList("selectChickenStore", brandNo);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		} finally {
			closeSqlSession(sqlSession);
		}
	}
	
	public Integer getChickenMenuTotalRow(int brandNo){
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSessionFactory.openSession().selectOne("getChickenMenuTotalRow", brandNo);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		} finally {
			closeSqlSession(sqlSession);
		}
	}
	
	public List<MenuBean> selectChickenMenu(int brandNo){
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSessionFactory.openSession().selectList("selectChickenMenu", brandNo);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		} finally {
			closeSqlSession(sqlSession);
		}
	}
	
	
}
