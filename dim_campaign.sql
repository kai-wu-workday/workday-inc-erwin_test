
CREATE TABLE dims.dim_campaign
( 
	campaign_id          varchar(18)  NOT NULL ,
	event_name           varchar(100)  NULL ,
	external_id          varchar(255)  NULL ,
	tags                 varchar(2500)  NULL ,
	description          varchar(32000)  NULL ,
	campaign_name        varchar(80)  NULL ,
	parent_campaign_id   varchar(18)  NULL ,
	type                 varchar(40)  NULL ,
	asset_offer          varchar(255)  NULL ,
	audience             varchar(255)  NULL ,
	is_backdated         boolean  NULL ,
	campaign_id_case_safe varchar(1300)  NULL ,
	campaign_sales_region varchar(4099)  NULL ,
	campaign_source_team varchar(255)  NULL ,
	campaign_sub_region  varchar(1300)  NULL ,
	campaign_super_type  varchar(1300)  NULL ,
	dnu_campaign_type    varchar(1300)  NULL ,
	campaign_url         varchar(1300)  NULL ,
	channel              varchar(255)  NULL ,
	dnu_joint_partner_sponsored varchar(18)  NULL ,
	dnu_marketo_program_url varchar(255)  NULL ,
	dnu_period           varchar(255)  NULL ,
	dnu_program_territory varchar(255)  NULL ,
	dnu_publisher        varchar(255)  NULL ,
	dnu_segment          varchar(255)  NULL ,
	enable_bizible_touchpoints varchar(255)  NULL ,
	event_name_for_calendar varchar(255)  NULL ,
	field_marketing_event_date timestamp  NULL ,
	field_marketing_event_delay float8  NULL ,
	first_campaign_member_response_date timestamp  NULL ,
	gated_ungated        varchar(255)  NULL ,
	geography            varchar(4099)  NULL ,
	industry             varchar(255)  NULL ,
	last_nomination_date timestamp  NULL ,
	ld_ft_bookings_attribution float8  NULL ,
	ld_lt_attribution    float8  NULL ,
	ld_lt_bookings_attribution float8  NULL ,
	ld_lt_generated_attribution float8  NULL ,
	ld_lt_generated_bookings_attribution float8  NULL ,
	ld_mt_accelerated_attribution float8  NULL ,
	ld_mt_accelerated_bookings_attribution float8  NULL ,
	ld_mt_bookings_attribution float8  NULL ,
	ld_mt_generated_attribution float8  NULL ,
	ld_mt_generated_bookings_attribution float8  NULL ,
	location_sfdc_name   varchar(255)  NULL ,
	mql_target           float8  NULL ,
	multi_product_focus  varchar(4099)  NULL ,
	calendar_event_name  varchar(255)  NULL ,
	partner              varchar(250)  NULL ,
	pillar               varchar(255)  NULL ,
	product_focus        varchar(255)  NULL ,
	program              varchar(255)  NULL ,
	program_country      varchar(4099)  NULL ,
	program_family       varchar(255)  NULL ,
	publisher            varchar(255)  NULL ,
	region_sfdc_name     varchar(255)  NULL ,
	sales_spot_link      varchar(255)  NULL ,
	sfdc_free_text_name  varchar(38)  NULL ,
	solution             varchar(255)  NULL ,
	subchannel           varchar(255)  NULL ,
	super_channel        varchar(255)  NULL ,
	super_industry       varchar(255)  NULL ,
	supplier             varchar(18)  NULL ,
	planning_tagged_event_link varchar(255)  NULL ,
	target_account_type  varchar(255)  NULL ,
	touchpoint_end_date  timestamp  NULL ,
	touchpoint_start_date timestamp  NULL ,
	unique_id            varchar(255)  NULL ,
	unique_name          varchar(255)  NULL ,
	planning_website_event_id varchar(255)  NULL ,
	planning_website_event_url varchar(255)  NULL ,
	campaign_key         integer  NOT NULL ,
	parent_campaign_key  integer  NULL ,
	campaign_record_type_key integer  NULL ,
	last_modified_user_by_key integer  NULL ,
	created_by_user_key  integer  NULL ,
	campaign_owner_user_key integer  NULL ,
	campaign_member_record_type_key integer  NULL ,
	source_system_name   varchar(100)  NULL ,
	effective_start_date timestamp without time zone  NULL ,
	effective_end_date   timestamp without time zone  NULL ,
	current_flag         character varying(5)  NULL  ENCODE LZO,
	etl_created_date     timestamp without time zone  NULL ,
	etl_updated_date     timestamp without time zone  NULL ,
	deleted_flag         boolean  NULL  ENCODE RAW 
);

ALTER TABLE dims.dim_campaign
	ADD CONSTRAINT XPKDim_Campaign_ix PRIMARY KEY (campaign_key);

ALTER TABLE dims.dim_campaign
	ADD CONSTRAINT dim_record_type_dim_campaign_campaign_record_type_key_fk FOREIGN KEY (campaign_record_type_key) REFERENCES dims.dim_record_type(record_type_key);

ALTER TABLE dims.dim_campaign
	ADD CONSTRAINT dim_user_dim_campaign_last_modified_user_by_key_fk FOREIGN KEY (last_modified_user_by_key) REFERENCES dims.dim_user(user_key);

ALTER TABLE dims.dim_campaign
	ADD CONSTRAINT dim_user_dim_campaign_created_by_user_key_fk FOREIGN KEY (created_by_user_key) REFERENCES dims.dim_user(user_key);

ALTER TABLE dims.dim_campaign
	ADD CONSTRAINT dim_campaign_dim_campaign_parent_campaign_key_fk FOREIGN KEY (parent_campaign_key) REFERENCES dims.dim_campaign(campaign_key);

ALTER TABLE dims.dim_campaign
	ADD CONSTRAINT dim_user_dim_campaign_campaign_owner_user_key_fk FOREIGN KEY (campaign_owner_user_key) REFERENCES dims.dim_user(user_key);

ALTER TABLE dims.dim_campaign
	ADD CONSTRAINT dim_record_type_dim_campaign_campaign_member_record_type_key_fk FOREIGN KEY (campaign_member_record_type_key) REFERENCES dims.dim_record_type(record_type_key);
