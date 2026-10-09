SET PAGESIZE 0
SET HEADING OFF
SET FEEDBACK OFF
SET VERIFY OFF
SET DEFINE OFF
SET LINESIZE 32767
SET TRIMSPOOL ON
SET WRAP OFF
SET NEWPAGE NONE
SET ARRAYSIZE 5000

SELECT
  NVL(TRIM(TRANSLATE(t.F_番号, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_分類名, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_払出区分, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_照会項目, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TO_CHAR(t.F_登録日,'YYYY/MM/DD HH24:MI:SS'),' ') || '<|>' ||
  NVL(TO_CHAR(t.F_更新日,'YYYY/MM/DD HH24:MI:SS'),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_英語名称, CHR(9)||CHR(10)||CHR(13), '   ')),' ')
FROM PRONES.TB_品目分類情報 t
;