package com.ob.archetype.config;

import com.github.pagehelper.PageInterceptor;
import org.apache.ibatis.logging.log4j2.Log4j2Impl;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

import javax.annotation.PostConstruct;
import java.util.Properties;

@Configuration
@MapperScan(basePackages = "com.ob.archetype.dal.dao")
@ConfigurationProperties("mybatis.pageHelper")
public class MybatisConfig extends Properties {
    /** 
     * @Fields serialVersionUID : serial version uid
     */ 
    private static final long serialVersionUID = -8536612105325927638L;
    @Autowired
    private SqlSessionFactory sqlSessionFactory;

    @PostConstruct
    public void addPlugin(){
        org.apache.ibatis.session.Configuration configuration = sqlSessionFactory.getConfiguration();
        PageInterceptor pageInterceptor = new PageInterceptor();
        configuration.setLogImpl(Log4j2Impl.class);
        pageInterceptor.setProperties(this);
        configuration.addInterceptor(pageInterceptor);
    }
}