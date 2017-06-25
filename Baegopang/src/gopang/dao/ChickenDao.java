package gopang.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;

import gopang.bean.BrandBean;
import gopang.bean.StoreBean;
import gopang.util.SqlSessionFactoryManager;

public class ChickenDao {
private SqlSessionFactory sqlSessionFactory;

	public ChickenDao() {
		sqlSessionFactory=SqlSessionFactoryManager.getSqlSessionFactory();
	}
	
	public List<BrandBean>selectChicken(int brandNo){
		return sqlSessionFactory.openSession().selectList("selectChicken",brandNo);
	}
	
	public Integer getChickenTotalRow(int brandNo){
		return sqlSessionFactory.openSession().selectOne("getChickenTotalRow",brandNo);
	}
	
	public List<StoreBean> selectChickenMenu(int brandNo){
		return sqlSessionFactory.openSession().selectList("selectChickenMenu", brandNo);
	}
	
	public Integer getChickenMenuTotalRow(int brandNo){
		return sqlSessionFactory.openSession().selectOne("getChickenMenuTotalRow", brandNo);
	}
	
	
}
