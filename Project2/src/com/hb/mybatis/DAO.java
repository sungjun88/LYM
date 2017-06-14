package com.hb.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

// DB관련된 처리하는 클래스
public class DAO {
	private static SqlSession ss;
	
	// 싱글턴 패턴 ; 프로그램이 끝날때까지 해당 객체는 하나만 가지고 사용
	private synchronized static SqlSession getSql(){
		if(ss == null){
			ss = DBService.getFactory().openSession(false);
		}
		return ss;
	}
	

	public static String getIdchk(String id){
		 List<VO> one = getSql().selectList("idchk", id);
		 String res = "join";
		 if(one.size()>0){
			res = "login";
		 }
		  return res ;
	}
	
	public static VO getLogin(VO vo){
		VO vo2 = getSql().selectOne("login", vo);
		return vo2 ;
	}
	
	public static int getJoin(VO vo){
		int res = getSql().insert("getjoin", vo);
		ss.commit();
		return res;
	}
	
}

