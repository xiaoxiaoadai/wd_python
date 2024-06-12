create view goods_view as (
select goods.id as id,
goods.name as name,
goods_cates.name as type,
goods_brands.`name` as brand_name
from goods left outer join goods_cates on goods_cates.id=goods.cate_id left outer join
goods_brands on goods.brand_id=goods_brands.id);


select * from goods_view;

drop view goods_view;


-- 索引操作
show index from goods;

drop index name_2 on goods;

create index name1 on goods(name);
--  创建唯一索引
create UNIQUE index price1 on goods(price);
--  创建联合索引
create index name2 on goods(name,price);

--  创建表
create table test_index(title varchar(10));

select count(*) from test_index;


-- •开启运行时间监测：
set profiling=1;
-- •查找第10万条数据ha-99999
select * from test_index where title='ha-99999';
-- •查看执行的时间：
show profiles;
-- •为表title_index的title列创建索引：
create index title_index on test_index(title(10));

show index from test_index;

-- •执行查询语句：
select * from test_index where title='ha-99999';
-- •再次查看执行的时间
show profiles;


-- 事务
begin;
select money from bank where name='xiongda';
update bank set money=money-200 where name='xiongda';
-- select money from bank where name='xiongda';
update bank set money=money+200 where name='xionger';
COMMIT;

-- 权限管理
select user,host from mysql.user;

create user 'zhangsan'@'localhost' identified by '123';
grant select on jing_dong.* to 'zhangsan'@'localhost';

show grants for 'zhangsan'@'localhost';

delete from mysql.user where user='laowang';