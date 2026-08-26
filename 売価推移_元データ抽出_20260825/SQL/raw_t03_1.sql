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
  NVL(TRIM(TRANSLATE(t.F_材料番号, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_得意先番号, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_開始日, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(RTRIM(TO_CHAR(t.F_契約単価,'FM999999999999999999999999999990.999999'),'.'),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_担当者, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_依頼者, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_照会項目, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TO_CHAR(t.F_登録日,'YYYY/MM/DD HH24:MI:SS'),' ') || '<|>' ||
  NVL(TO_CHAR(t.F_更新日,'YYYY/MM/DD HH24:MI:SS'),' ')
FROM PRONES.TB_材料得意先単価情報 t
WHERE MOD(ORA_HASH(t.F_材料番号||'#'||t.F_得意先番号||'#'||t.F_開始日), 2) = 1;