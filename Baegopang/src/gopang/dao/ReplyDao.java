package gopang.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import gopang.bean.ReplyBean;

public class ReplyDao {
	private SqlSessionFactory sqlSessionFactory;
	
	public void insertReply(ReplyBean bean){
		SqlSession sqlSession=null;
		try {
			sqlSession=sqlSessionFactory.openSession();
			sqlSession.insert("insertReply", bean);
			sqlSession.commit();			
		} catch (Exception e) {
			// TODO: handle exception
		    sqlSession.rollback();
		    e.printStackTrace();
		}finally {
			sqlSession.close();
		}
	}
	
	public Integer selectRepSeq()throws Exception{
		return sqlSessionFactory.openSession().selectOne("selectRepSeq");
	}
	
	public List<ReplyBean>selectReply(String storeName)throws Exception{
		return sqlSessionFactory.openSession().selectList("selectReply",storeName);
	}
}
