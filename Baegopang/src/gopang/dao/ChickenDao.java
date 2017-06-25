package gopang.dao;

import java.util.List;

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
	
	public List<BrandBean>selectChicken(int brandNo){
		return sqlSessionFactory.openSession().selectList("selectChicken",brandNo);
	}
	
	public Integer getChickenTotalRow(int brandNo){
		return sqlSessionFactory.openSession().selectOne("getChickenTotalRow",brandNo);
	}
	
	public List<StoreBean> selectChickenStore(int brandNo){
		return sqlSessionFactory.openSession().selectList("selectChickenStore", brandNo);
	}
	
	public Integer getChickenMenuTotalRow(int brandNo){
		return sqlSessionFactory.openSession().selectOne("getChickenMenuTotalRow", brandNo);
	}
	
	public List<MenuBean> selectChickenMenu(int brandNo){
		return sqlSessionFactory.openSession().selectList("selectChickenMenu", brandNo);
	}
	
	
}
