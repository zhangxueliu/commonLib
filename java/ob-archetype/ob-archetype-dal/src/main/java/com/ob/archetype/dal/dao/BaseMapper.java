package com.ob.archetype.dal.dao;

import java.util.List;

public interface BaseMapper<T> {

	/**
	 * 查询单个对象
	 * @param data
	 * @return
	 */
	T queryObject(T data);
	
	
	/**
	 * 查询对象集合
	 * @param data
	 * @return
	 */
	List<T> queryForList(T data);
	
	/**
	 * 添加数据对象到数据表
	 * @param data
	 * @return
	 */
	int insertData(T data);


	/**
	 * 更新数据对象到数据表
	 * @param data
	 * @return
	 */
	int updateData(T data);


	/**
	 * 通过主键查询表数据
	 * @param id
	 * @return
	 */
	T queryObjectByPK(Object id);

	/**
	 * 通过主键更新数据
	 * @param data
	 * @return
	 */
	int updateDataByPK(T data);
	
    /**
     * 通过主键删除数据
     * @param data
     * @return
     */
    int deleteDataByPK(Object data);
}
