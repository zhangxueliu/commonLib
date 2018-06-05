package com.ob.archetype.service.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.ob.archetype.dal.dao.BaseMapper;
import com.ob.archetype.service.BaseService;

public abstract class BaseServiceImpl<T> implements BaseService<T> {

    Logger logger = LoggerFactory.getLogger(BaseServiceImpl.class);

    private BaseMapper<T> t;

    public BaseMapper<T> getT() {
        return t;
    }

    public void setT(BaseMapper<T> t) {
        this.t = t;
    }

    public abstract void init();

    @Override
    public T queryObject(T data) {
        return t.queryObject(data);
    }

    @Override
    public List<T> queryForList(T data) {
        return t.queryForList(data);
    }

    @Override
    public int insertData(T data) {
        return t.insertData(data);
    }

    @Override
    public int updateData(T data) {
        return t.updateData(data);
    }

    @Override
    public T queryObjectByPK(Object id) {
        return t.queryObjectByPK(id);
    }

    @Override
    public int updateDataByPK(T data) {
        return t.updateDataByPK(data);
    }

    @Override
    public int deleteDataByPK(Object data) {
        return t.deleteDataByPK(data);
    }
}
