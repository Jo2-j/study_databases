-- syntax 참조
-- update notice_contents 
-- Ctrl + /
-- 다른 테이블과 연관관계가 없기에 변경을 할 수 있음, CF: PK는 동일한 이유때문에 안됨
-- 참, 거짓; 특정 레코드를 가리키는, 어떤건지 콕 찍는 용도
SELECT *
FROM `NOTICE_CONTENTS`
;

SELECT *
FROM `NOTICE_VISITOR`
;

UPDATE `NOTICE_CONTENTS`
SET `CONTENTS` = '이벤트 안내 수정', `WRITER` = '관리자'
WHERE `PK_A` = 'A002';
SELECT *
FROM `NOTICE_VISITOR`
WHERE `FK_A` = 'A002'
;

UPDATE `NOTICE_VISITOR`
SET `VISITOR` = '정지호'
WHERE 'FK_A' = 'A002'
;
