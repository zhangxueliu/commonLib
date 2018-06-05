INSERT INTO t_dictionary(dict_name,dict_code,dict_desc,i18n_desc,is_leaf,sort_index,create_by,create_time,update_by,update_time,status)
	VALUES('v_dimension_type','dimension_string','字符串','dimension_string', '1',0,'backMan',now(),'backMan',now(),'1');

INSERT INTO t_dictionary(dict_name,dict_code,dict_desc,i18n_desc,is_leaf,sort_index,create_by,create_time,update_by,update_time,status)
	VALUES('v_dimension_type','dimension_boolean','布尔','dimension_boolean', '1',1,'backMan',now(),'backMan',now(),'1');

INSERT INTO t_dictionary(dict_name,dict_code,dict_desc,i18n_desc,is_leaf,sort_index,create_by,create_time,update_by,update_time,status)
	VALUES('v_dimension_type','dimension_int','整形','dimension_int', '1',2,'backMan',now(),'backMan',now(),'1');

INSERT INTO t_dictionary(dict_name,dict_code,dict_desc,i18n_desc,is_leaf,sort_index,create_by,create_time,update_by,update_time,status)
	VALUES('v_dimension_type','dimension_double','浮点','dimension_double', '1',3,'backMan',now(),'backMan',now(),'1');

INSERT INTO t_dictionary(dict_name,dict_code,dict_desc,i18n_desc,is_leaf,sort_index,create_by,create_time,update_by,update_time,status)
	VALUES('v_dimension_type','dimension_dict','字典类型','dimension_dict', '1',4,'backMan',now(),'backMan',now(),'1');

INSERT INTO t_dictionary(dict_name,dict_code,dict_desc,i18n_desc,is_leaf,sort_index,create_by,create_time,update_by,update_time,status)
	VALUES('v_dimension_type','dimension_date','时间类型','dimension_date', '1',5,'backMan',now(),'backMan',now(),'1');

INSERT INTO t_dictionary(dict_name,dict_code,dict_desc,i18n_desc,is_leaf,sort_index,create_by,create_time,update_by,update_time,status)
	VALUES('v_dimension_type','dimension_ccy','币种','dimension_ccy', '1',6,'backMan',now(),'backMan',now(),'1');

INSERT INTO t_dictionary(dict_name,dict_code,dict_desc,i18n_desc,is_leaf,sort_index,create_by,create_time,update_by,update_time,status)
	VALUES('v_dimension_group','dimension_group_trade','交易信息','dimension_group_trade','1',0,'backMan',now(),'backMan',now(),'1');

INSERT INTO t_dictionary(dict_name,dict_code,dict_desc,i18n_desc,is_leaf,sort_index,create_by,create_time,update_by,update_time,status)
	VALUES('v_dimension_group','dimension_group_card','卡信息','dimension_group_card','1',1,'backMan',now(),'backMan',now(),'1');

INSERT INTO t_dictionary(dict_name,dict_code,dict_desc,i18n_desc,is_leaf,sort_index,create_by,create_time,update_by,update_time,status)
	VALUES('v_dimension_group','dimension_group_bill_address','账单信息','dimension_group_bill_address','1',2,'backMan',now(),'backMan',now(),'1');

INSERT INTO t_dictionary(dict_name,dict_code,dict_desc,i18n_desc,is_leaf,sort_index,create_by,create_time,update_by,update_time,status)
	VALUES('v_dimension_group','dimension_group_ship_address','物流信息','dimension_group_ship_address','1',3,'backMan',now(),'backMan',now(),'1');

INSERT INTO t_dictionary(dict_name,dict_code,dict_desc,i18n_desc,is_leaf,sort_index,create_by,create_time,update_by,update_time,status)
	VALUES('v_dimension_group','dimension_group_device','设备信息','dimension_group_device','1',4,'backMan',now(),'backMan',now(),'1');

INSERT INTO t_dictionary(dict_name,dict_code,dict_desc,i18n_desc,is_leaf,sort_index,create_by,create_time,update_by,update_time,status)
	VALUES('v_dimension_group','dimension_group_cust','个人信息','dimension_group_cust','1',5,'backMan',now(),'backMan',now(),'1');

INSERT INTO t_dictionary(dict_name,dict_code,dict_desc,i18n_desc,is_leaf,sort_index,create_by,create_time,update_by,update_time,status)
	VALUES('v_code_type','code_type_rule_condition','规则代码','code_type_rule_condition','0',0,'backMan',now(),'backMan',now(),'1');

INSERT INTO t_dictionary(dict_name,dict_code,dict_desc,i18n_desc,is_leaf,sort_index,create_by,create_time,update_by,update_time,status)
	VALUES('v_code_type','code_type_decision','决策代码','code_type_decision','0',1,'backMan',now(),'backMan',now(),'1');

INSERT INTO t_dictionary(dict_name,dict_code,dict_desc,i18n_desc,is_leaf,sort_index,create_by,create_time,update_by,update_time,status)
	VALUES('v_code_type','code_type_out_dimension','外置代码','code_type_out_dimension','0',2,'backMan',now(),'backMan',now(),'1');

INSERT INTO t_dictionary(dict_name,dict_code,dict_desc,i18n_desc,is_leaf,sort_index,create_by,create_time,update_by,update_time,status)
	VALUES('v_base_decision','v_base_decision_pass','通过','v_base_decision_pass','1',0,'backMan',now(),'backMan',now(),'1');

INSERT INTO t_dictionary(dict_name,dict_code,dict_desc,i18n_desc,is_leaf,sort_index,create_by,create_time,update_by,update_time,status)
	VALUES('v_base_decision','v_base_decision_refuse','拒绝','v_base_decision_refuse','1',1,'backMan',now(),'backMan',now(),'1');

INSERT INTO t_dictionary(dict_name,dict_code,dict_desc,i18n_desc,is_leaf,sort_index,create_by,create_time,update_by,update_time,status)
	VALUES('v_base_decision','v_base_decision_strategy','策略','v_base_decision_strategy','1',2,'backMan',now(),'backMan',now(),'1');

INSERT INTO t_dictionary(dict_name,dict_code,dict_desc,i18n_desc,is_leaf,sort_index,create_by,create_time,update_by,update_time,status)
	VALUES('v_base_action','prefix_risk','前置风控','v_base_action_trade','0',0,'backMan',now(),'backMan',now(),'1');

INSERT INTO t_dictionary(dict_name,dict_code,dict_desc,i18n_desc,is_leaf,sort_index,create_by,create_time,update_by,update_time,status)
	VALUES('v_base_action','risk','风控','v_base_action_trade_process','0',1,'backMan',now(),'backMan',now(),'1');

INSERT INTO t_dictionary(dict_name,dict_code,dict_desc,i18n_desc,is_leaf,sort_index,create_by,create_time,update_by,update_time,status)
	VALUES('v_base_action','risk_after','风控后置','v_base_action_trade_complete','0',2,'backMan',now(),'backMan',now(),'1');

INSERT INTO t_dictionary(dict_name,dict_code,dict_desc,i18n_desc,is_leaf,sort_index,create_by,create_time,update_by,update_time,status)
	VALUES('prefix_risk','trade_pre','风控预交易','trade_pre','1',0,'backMan',now(),'backMan',now(),'1');

INSERT INTO t_dictionary(dict_name,dict_code,dict_desc,i18n_desc,is_leaf,sort_index,create_by,create_time,update_by,update_time,status)
	VALUES('risk','credit_card_trade_process','信用卡风控交易','credit_card_trade_process','1',0,'backMan',now(),'backMan',now(),'1');

INSERT INTO t_dictionary(dict_name,dict_code,dict_desc,i18n_desc,is_leaf,sort_index,create_by,create_time,update_by,update_time,status)
	VALUES('risk','local_trade_process','本地化风控交易','local_trade_process','1',1,'backMan',now(),'backMan',now(),'1');

INSERT INTO t_dictionary(dict_name,dict_code,dict_desc,i18n_desc,is_leaf,sort_index,create_by,create_time,update_by,update_time,status)
	VALUES('risk','credit_card_auth_process','信用卡预授权风控交易','credit_card_auth_process','1',2,'backMan',now(),'backMan',now(),'1');

INSERT INTO t_dictionary(dict_name,dict_code,dict_desc,i18n_desc,is_leaf,sort_index,create_by,create_time,update_by,update_time,status)
	VALUES('risk','credit_card_3d_process','信用卡3D风控交易','credit_card_3d_process','1',3,'backMan',now(),'backMan',now(),'1');

INSERT INTO t_dictionary(dict_name,dict_code,dict_desc,i18n_desc,is_leaf,sort_index,create_by,create_time,update_by,update_time,status)
	VALUES('risk_after','credit_card_trade_complete','信用卡风控交易完成','credit_card_trade_complete','1',0,'backMan',now(),'backMan',now(),'1');

INSERT INTO t_dictionary(dict_name,dict_code,dict_desc,i18n_desc,is_leaf,sort_index,create_by,create_time,update_by,update_time,status)
	VALUES('risk_after','local_trade_complete','本地化风控交易完成','local_trade_complete','1',1,'backMan',now(),'backMan',now(),'1');

INSERT INTO t_dictionary(dict_name,dict_code,dict_desc,i18n_desc,is_leaf,sort_index,create_by,create_time,update_by,update_time,status)
	VALUES('risk','withdraw','提现','withdraw','1',4,'backMan',now(),'backMan',now(),'1');

INSERT INTO t_dictionary(dict_name,dict_code,dict_desc,i18n_desc,is_leaf,sort_index,create_by,create_time,update_by,update_time,status)
	VALUES('risk','login','登录','login','1',5,'backMan',now(),'backMan',now(),'1');

INSERT INTO t_dictionary(dict_name,dict_code,dict_desc,i18n_desc,is_leaf,sort_index,create_by,create_time,update_by,update_time,status)
	VALUES('decision_strategy_advise','risk_man_auditing','风控人员审核','risk_man_auditing','1',0,'backMan',now(),'backMan',now(),'1');

INSERT INTO t_dictionary(dict_name,dict_code,dict_desc,i18n_desc,is_leaf,sort_index,create_by,create_time,update_by,update_time,status)
	VALUES('decision_strategy_advise','merchant_auditing','商户人员审核','merchant_auditing','1',1,'backMan',now(),'backMan',now(),'1');

INSERT INTO t_dictionary(dict_name,dict_code,dict_desc,i18n_desc,is_leaf,sort_index,create_by,create_time,update_by,update_time,status)
	VALUES('decision_strategy_advise','customer_auditing','客户自审','customer_auditing','1',2,'backMan',now(),'backMan',now(),'1');

INSERT INTO t_dictionary(dict_name,dict_code,dict_desc,i18n_desc,is_leaf,sort_index,create_by,create_time,update_by,update_time,status)
	VALUES('decision_strategy_advise','pre_auth_auditing','预授权审核','pre_auth_auditing','1',3,'backMan',now(),'backMan',now(),'1');

INSERT INTO t_dictionary(dict_name,dict_code,dict_desc,i18n_desc,is_leaf,sort_index,create_by,create_time,update_by,update_time,status)
	VALUES('decision_strategy_advise','3d_auditing','3d审核','3d_auditing','1',4,'backMan',now(),'backMan',now(),'1');

INSERT INTO t_dictionary(dict_name,dict_code,dict_desc,i18n_desc,is_leaf,sort_index,create_by,create_time,update_by,update_time,status)
	VALUES('decision_strategy_advise','record_keep','进入存疑单','record_keep','1',5,'backMan',now(),'backMan',now(),'1');

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_trade','trade_time','交易时间','dimension_date', '0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_trade','trade_ip','交易IP地址','dimension_string','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_trade','trade_amount','交易金额','dimension_double','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_trade','trade_ccy','交易币种','dimension_ccy','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_trade','trade_email','交易邮箱','dimension_string','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_trade','trade_phone','交易手机','dimension_string','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_trade','merchant_id','交易商户','dimension_string','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_trade','trade_type','交易类型','dimension_string','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_trade','trade_source','交易来源','dimension_string','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_trade','trade_goods','交易商品','dimension_string','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_card','card_no','卡号','dimension_string','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_card','first_name','持卡人姓','dimension_string','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_card','last_name','持卡人名','dimension_string','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_card','secure_code','CVV','dimension_string','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_card','expire_date','有效期','dimension_date','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_card','card_country','卡bin国','dimension_string','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_card','card_orz','发卡行','dimension_string','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_card','card_ccy','卡本币','dimension_string','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_device','device_type','设备类型','dimension_dict','0', null,'v_device_type','backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_device','device_name','设备名称','dimension_string','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_device','device_os','设备操作系统','dimension_string','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_device','device_sn','设备系列号','dimension_string','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_device','user_agent','浏览器的userAgent信息','dimension_string','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_device','mac_address','mac地址','dimension_string','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_device','device_language','设备语言','dimension_string','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_device','device_country','设备国家','dimension_string','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_device','device_imsi','手机imsi号','dimension_string','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_device','device_imsi_operator','手机imsi号营运商','dimension_string','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_device','device_imsi_country','手机imsi号国家','dimension_string','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_bill_address','bill_name','账单姓名','dimension_string','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_bill_address','bill_phone','账单电话','dimension_string','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_bill_address','bill_email','账单邮箱','dimension_string','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_bill_address','bill_details_street_info','账单街道信息','dimension_string','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_bill_address','bill_unit_info','账单单位信息','dimension_string','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_bill_address','bill_country_code','账单国家代码','dimension_string','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_bill_address','bill_province','账单省/州','dimension_string','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_bill_address','bill_city','账单城市','dimension_string','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_bill_address','bill_postal_code','账单邮寄postCode','dimension_string','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_ship_address','contact_name','邮寄姓名','dimension_string','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_ship_address','contact_phone','邮寄电话','dimension_string','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_ship_address','contact_email','邮寄邮箱','dimension_string','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_ship_address','contact_details_street_info','邮寄街道信息','dimension_string','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_ship_address','contact_unit_info','邮寄单位信息','dimension_string','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_ship_address','contact_country_code','邮寄国家代码','dimension_string','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_ship_address','contact_province','邮寄省/州','dimension_string','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_ship_address','contact_city','邮寄城市','dimension_string','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);

INSERT INTO t_dimension(dimen_group,dimen_name,dimen_desc,dimen_type,dimen_belong_type,dimen_belong_code,dict_code,create_by,create_time,update_by,update_time,status,is_sensitive,sensitive_format)
	VALUES('dimension_group_ship_address','contact_postal_code','邮寄邮寄postCode','dimension_string','0', null,null,'backMan',now(),'backMan',now(),'1','0',null);
