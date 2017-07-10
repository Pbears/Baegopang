package gopang.dao;

import java.io.Closeable;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import gopang.bean.BrandBean;
import gopang.util.SqlSessionFactoryManager;

public class ChinaFoodDao {
private SqlSessionFactory sqlSessionFactory;

	public ChinaFoodDao() {
		sqlSessionFactory=SqlSessionFactoryManager.getSqlSessionFactory();
	}
	
	 private void closeSqlSession(Closeable c) {
	      try {
	         if(c != null) c.close();
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	   }
	
	public List<BrandBean>selectChinaFood(int brandNo){
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSessionFactory.openSession().selectList("selectChinaFood",brandNo);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		} finally {
			closeSqlSession(sqlSession);
		}
	}
	
	public Integer getChinaFoodtotalRow(int brandNo){
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSessionFactory.openSession().selectOne("getChinaFoodtotalRow",brandNo);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		} finally {
			closeSqlSession(sqlSession);
		}
	}
}
