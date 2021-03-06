package com.beijiao.dao;

import java.util.List;
import java.util.Map;

import com.beijiao.model.AffairWork;

public interface AffairDao {

	public List<AffairWork> selectAllWork(int affairId);	
	public AffairWork selectWork(int affWorkId);
	public int insertWork(AffairWork Work);
	public int updateWork(AffairWork Work);
	public int deleteWork(int affWorkId);
	public List<AffairWork> selectAllAffair(Map map);	
	public int getRecordCount();

}
