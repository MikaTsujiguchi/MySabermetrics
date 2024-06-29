INSERT INTO gs_an_table(id,name,email,age,naiyou,indate)VALUES(NULL,'test1','test1`test.jp',30,'test',sysdate());

INSERT INTO gs_an_table(id,name,email,age,naiyou,indate)VALUES(NULL,'test2','test2@test.jp',40,'test2',sysdate());

INSERT INTO gs_an_table(id,name,email,age,naiyou,indate)VALUES(NULL,'test3','test3@test.jp',20,'test3',sysdate());

INSERT INTO gs_an_table(id,name,email,age,naiyou,indate)VALUES(NULL,'test4','test4@test.jp',50,'test4',sysdate());

INSERT INTO gs_an_table(id,name,email,age,naiyou,indate)VALUES(NULL,'test5','test5@test.jp',10,'test5',sysdate());

INSERT INTO gs_an_table(id,name,email,age,naiyou,indate)VALUES(NULL,'test6','test6@test.jp',40,'test6',sysdate());

INSERT INTO gs_an_table(id,name,email,age,naiyou,indate)VALUES(NULL,'test7','test7@test.jp',10,'test7',sysdate());

INSERT INTO gs_an_table(id,name,email,age,naiyou,indate)VALUES(NULL,'test8','test8@test.jp',20,'test8',sysdate());

INSERT INTO gs_an_table(id,name,email,age,naiyou,indate)VALUES(NULL,'test9','test9@test.jp',30,'test9',sysdate());


INSERT INTO gs_an_table(name,email,age,naiyou,indate)VALUES(:name,:email,:age,:naiyou,sysdate());

INSERT INTO gs_an_table(name,email,age,naiyou,indate)VALUES('test10','test10@test.jp',50,'test10',sysdate());

-- テーブル全体のデータを取得
SELECT * FROM gs_an_table;

-- 該当のもののみ取得
SELECT id,name,indate FROM gs_an_table;
SELECT name FROM gs_db _table;
SELECT name,email FROM gs _dβ _table;

-- idが１の人だけ取得
SELECT * FROM gs_an_table WHERE id=1;

SELECT * FROM gs_an_table WHERE id>=1 AND id<=3;

-- あいまい検索
SELECT * FROM gs_an_table WHERE email LIKE '%test1%';

-- 表示をソートする
-- 最新のものから並べる（数字が大きい順）
SELECT * FROM gs_an_table ORDER BY indate DESC;
-- 数字が小さい順
SELECT * FROM gs_an_table ORDER BY indate ASC;

-- 表示件数の制限
-- 新しいのから３つのみ表示
SELECT * FROM gs_an_table ORDER BY indate DESC LIMIT 3;


INSERT INTO pr_dashboard_table(id,name,grade,position,run_10m,run_1base,run_2base,indate)VALUES(NULL,'student1','Grade 1','Pitcher',2.9,5.3,7.1,sysdate());

INSERT INTO pr_dashboard_table(id,name)VALUES(NULL,'student1');




