CREATE DATABASE IF NOT EXISTS risk DEFAULT CHARSET utf8 COLLATE utf8_general_ci;

CREATE USER 'risk'@'%' IDENTIFIED BY 'risk';
grant all privileges on risk.* to risk@'%';
flush privileges;

CREATE TABLE t_dictionary(
   dict_id INT NOT NULL AUTO_INCREMENT,
   dict_name VARCHAR(128) NOT NULL COMMENT '字典名',
   dict_code VARCHAR(128) NOT NULL COMMENT '字典子值',
   dict_desc VARCHAR(256) NOT NULL COMMENT '字典描述',
   i18n_desc VARCHAR(256) NOT NULL COMMENT '字典i18n描述',
   is_leaf CHAR(1) NOT NULL COMMENT '是否是子节点  0/1代表不是/是',
   sort_index INT NOT NULL COMMENT '字典枚举序号',
   create_by VARCHAR(64) NOT NULL COMMENT '创建者',
   create_time TIMESTAMP NOT NULL COMMENT '创建时间',
   update_by VARCHAR(64) NOT NULL COMMENT '更新者',
   update_time TIMESTAMP NOT NULL COMMENT '更新时间',
   status CHAR(1) NOT NULL COMMENT '是否有效  0/1代表没有/有',
   PRIMARY KEY ( dict_id )
)COMMENT='字典表';
ALTER TABLE t_dictionary ADD INDEX(dict_name);

ALTER TABLE t_dictionary ADD UNIQUE INDEX(dict_name,dict_code);

CREATE TABLE t_dimension(
   dimen_id INT NOT NULL AUTO_INCREMENT,
   dimen_group VARCHAR(256) NOT NULL COMMENT '维度组 见字典表v_dimension_group item',
   dimen_name VARCHAR(256) NOT NULL COMMENT '维度名',
   dimen_desc VARCHAR(512) NOT NULL COMMENT '维度描述',
   dimen_type VARCHAR(256) NOT NULL COMMENT '维度类型  dict_name=v_dimension_type item',
   dimen_belong_type CHAR(1) NOT NULL COMMENT '维度所属类型 0/1  代表业务调用者直接传/调用外部代码得到',
   dimen_belong_code INT COMMENT '得到改维度的外置codeID',
   dict_code VARCHAR(256) COMMENT 'dimen_type=dimension_dict dict_name',
   create_by VARCHAR(64) NOT NULL COMMENT '创建者',
   create_time TIMESTAMP NOT NULL COMMENT '创建时间',
   update_by VARCHAR(64) NOT NULL COMMENT '更新者',
   update_time TIMESTAMP NOT NULL COMMENT '更新时间',
   status CHAR(1) NOT NULL COMMENT '是否有效  0/1代表没有/有',
   is_sensitive CHAR(1) NOT NULL COMMENT '是否是敏感信息',
   sensitive_format varchar(256) COMMENT '敏感信息日志打印格式',
   PRIMARY KEY ( dimen_id )
)COMMENT='维度表' ;

ALTER TABLE t_dimension ADD UNIQUE INDEX(dimen_name);

CREATE TABLE t_code(
   code_id INT NOT NULL AUTO_INCREMENT,
   code_name VARCHAR(256) NOT NULL COMMENT '代码名称',
   code_desc VARCHAR(512) NOT NULL COMMENT '代码描述',
   code_type VARCHAR(256) NOT NULL COMMENT '代码类型 dict_name=v_code_type',
   code_content mediumtext NOT NULL COMMENT '代码内容',
   create_by VARCHAR(64) NOT NULL COMMENT '创建者',
   create_time TIMESTAMP NOT NULL COMMENT '创建时间',
   update_by VARCHAR(64) NOT NULL COMMENT '更新者',
   update_time TIMESTAMP NOT NULL COMMENT '更新时间',
   status CHAR(1) NOT NULL COMMENT '是否有效  0/1代表没有/有',
   PRIMARY KEY ( code_id )
)COMMENT='代码表' ;

CREATE TABLE t_code_parameter(
   param_id INT NOT NULL AUTO_INCREMENT,
   code_id INT NOT NULL COMMENT '代码ID',
   param_name VARCHAR(256) NOT NULL COMMENT '参数名  比如时间频率 tradeTimes_second',
   param_desc VARCHAR(512) NOT NULL COMMENT '参数描述',
   create_by VARCHAR(64) NOT NULL COMMENT '创建者',
   create_time TIMESTAMP NOT NULL COMMENT '创建时间',
   update_by VARCHAR(64) NOT NULL COMMENT '更新者',
   update_time TIMESTAMP NOT NULL COMMENT '更新时间',
   status CHAR(1) NOT NULL COMMENT '是否有效  0/1代表没有/有',
   PRIMARY KEY ( param_id )
)COMMENT='代码参数表' ;

CREATE TABLE t_code_standard(
   store_id INT NOT NULL AUTO_INCREMENT,
   code_id INT NOT NULL COMMENT '代码ID',
   store_name VARCHAR(256) NOT NULL COMMENT '标准代码套名称',
   create_by VARCHAR(64) NOT NULL COMMENT '创建者',
   create_time TIMESTAMP NOT NULL COMMENT '创建时间',
   update_by VARCHAR(64) NOT NULL COMMENT '更新者',
   update_time TIMESTAMP NOT NULL COMMENT '更新时间',
   status CHAR(1) NOT NULL COMMENT '是否有效  0/1代表没有/有',
   PRIMARY KEY ( store_id )
)COMMENT='标准代码套表' ;

CREATE TABLE t_parameter_store(
   param_store_id INT NOT NULL AUTO_INCREMENT,
   store_id INT NOT NULL COMMENT '套ID',
   param_id INT NOT NULL COMMENT '参数ID',
   param_value VARCHAR(256) COMMENT '参数值',
   create_by VARCHAR(64) NOT NULL COMMENT '创建者',
   create_time TIMESTAMP NOT NULL COMMENT '创建时间',
   update_by VARCHAR(64) NOT NULL COMMENT '更新者',
   update_time TIMESTAMP NOT NULL COMMENT '更新时间',
   status CHAR(1) NOT NULL COMMENT '是否有效  0/1代表没有/有',
   PRIMARY KEY ( param_store_id )
)COMMENT='参数存储表' ;

CREATE TABLE t_rule(
   rule_id INT NOT NULL AUTO_INCREMENT,
   rule_name VARCHAR(256) NOT NULL COMMENT '代码名称',
   rule_desc VARCHAR(512) NOT NULL COMMENT '代码描述',
   rule_effect_type CHAR(1) NOT NULL COMMENT '规则起效类型 0/1  全部/指定商户',
   rule_condition_type CHAR(1) NOT NULL COMMENT '规则条件类型 0/1  基本条件类型/代码条件类型',
   base_decision VARCHAR(256) COMMENT '基本决策类型 dict_name=v_base_decision_item',
   condition_expression VARCHAR(256) COMMENT '基本条件类型表达式',
   condition_store_id INT COMMENT '代码条件ID',
   create_by VARCHAR(64) NOT NULL COMMENT '创建者',
   create_time TIMESTAMP NOT NULL COMMENT '创建时间',
   update_by VARCHAR(64) NOT NULL COMMENT '更新者',
   update_time TIMESTAMP NOT NULL COMMENT '更新时间',
   status CHAR(1) NOT NULL COMMENT '是否有效  0/1代表没有/有',
   PRIMARY KEY (rule_id)
)COMMENT='规则表' ;

CREATE TABLE t_rule_condition(
   rule_condition_id INT NOT NULL AUTO_INCREMENT,
   rule_id INT NOT NULL COMMENT '规则ID',
   condition_alpha_code VARCHAR(2) NOT NULL COMMENT '条件代替字母',
   condition_left_dimension_id INT NOT NULL COMMENT '条件左维度ID',
   condition_operator VARCHAR(8) NOT NULL COMMENT '条件操作符',
   condition_right_type CHAR(1) NOT NULL COMMENT '条件右值类型 0/1  固定值还是维度',
   right_fit_value VARCHAR(1024) NOT NULL COMMENT '条件右值固定值',
   right_dimension_id INT COMMENT '条件右值维度',
   create_by VARCHAR(64) NOT NULL COMMENT '创建者',
   create_time TIMESTAMP NOT NULL COMMENT '创建时间',
   update_by VARCHAR(64) NOT NULL COMMENT '更新者',
   update_time TIMESTAMP NOT NULL COMMENT '更新时间',
   status CHAR(1) NOT NULL COMMENT '是否有效  0/1代表没有/有',
   PRIMARY KEY (rule_condition_id)
)COMMENT='规则条件关联表' ;

CREATE TABLE t_rule_decision(
   rule_decision_id INT NOT NULL AUTO_INCREMENT,
   rule_id INT NOT NULL COMMENT '规则ID',
   store_id  INT NOT NULL COMMENT '决策代码ID',
   create_date TIMESTAMP,
   create_by VARCHAR(64) NOT NULL COMMENT '创建者',
   create_time TIMESTAMP NOT NULL COMMENT '创建时间',
   update_by VARCHAR(64) NOT NULL COMMENT '更新者',
   update_time TIMESTAMP NOT NULL COMMENT '更新时间',
   status CHAR(1) NOT NULL COMMENT '是否有效  0/1代表没有/有',
   PRIMARY KEY (rule_decision_id)
)COMMENT='规则决策关联表' ;

CREATE TABLE t_rule_action(
   rule_action_id INT NOT NULL AUTO_INCREMENT,
   rule_id INT NOT NULL COMMENT '规则ID',
   rule_effect_action VARCHAR(256) NOT NULL COMMENT '规则起效的动作  dict_name=v_base_action 叶子节点',
   create_by VARCHAR(64) NOT NULL COMMENT '创建者',
   create_time TIMESTAMP NOT NULL COMMENT '创建时间',
   update_by VARCHAR(64) NOT NULL COMMENT '更新者',
   update_time TIMESTAMP NOT NULL COMMENT '更新时间',
   status CHAR(1) NOT NULL COMMENT '是否有效  0/1代表没有/有',
   PRIMARY KEY (rule_action_id)
)COMMENT='规则动作关联表' ;

CREATE TABLE t_code_action(
   code_action_id INT NOT NULL AUTO_INCREMENT,
   store_id INT NOT NULL COMMENT '代码前ID',
   rule_effect_action VARCHAR(256) NOT NULL COMMENT '规则起效的动作  dict_name=v_base_action 叶子节点',
   create_by VARCHAR(64) NOT NULL COMMENT '创建者',
   create_time TIMESTAMP NOT NULL COMMENT '创建时间',
   update_by VARCHAR(64) NOT NULL COMMENT '更新者',
   update_time TIMESTAMP NOT NULL COMMENT '更新时间',
   status CHAR(1) NOT NULL COMMENT '是否有效  0/1代表没有/有',
   PRIMARY KEY (code_action_id)
)COMMENT='代码动作关联表' ;

CREATE TABLE t_rule_merchant(
   rule_merchant_id INT NOT NULL AUTO_INCREMENT,
   rule_id INT NOT NULL COMMENT '规则ID',
   merchant_id VARCHAR(256) NOT NULL COMMENT '商户ID',
   create_by VARCHAR(64) NOT NULL COMMENT '创建者',
   create_time TIMESTAMP NOT NULL COMMENT '创建时间',
   update_by VARCHAR(64) NOT NULL COMMENT '更新者',
   update_time TIMESTAMP NOT NULL COMMENT '更新时间',
   status CHAR(1) NOT NULL COMMENT '是否有效  0/1代表没有/有',
   PRIMARY KEY (rule_merchant_id)
)COMMENT='规则商户关联表' ;

ALTER TABLE t_rule_merchant ADD UNIQUE INDEX(rule_id,merchant_id);

CREATE TABLE t_strategy_advise(
   strategy_advise_id INT NOT NULL AUTO_INCREMENT,
   strategy_effect_action VARCHAR(256) NOT NULL COMMENT '策略起效的动作  dict_name=v_base_action 叶子节点',
   merchant_id VARCHAR(256) NOT NULL COMMENT '商户ID',
   strategy_trigger_advise VARCHAR(256) NOT NULL COMMENT '策略触发的建议  dict_name=decision_strategy_advise 叶子节点',
   create_by VARCHAR(64) NOT NULL COMMENT '创建者',
   create_time TIMESTAMP NOT NULL COMMENT '创建时间',
   update_by VARCHAR(64) NOT NULL COMMENT '更新者',
   update_time TIMESTAMP NOT NULL COMMENT '更新时间',
   status CHAR(1) NOT NULL COMMENT '是否有效  0/1代表没有/有',
   PRIMARY KEY (strategy_advise_id)
)COMMENT='策略建议关联表' ;

