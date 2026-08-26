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
  NVL(RTRIM(TO_CHAR(t.F_売上番号,'FM999999999999999999999999999990.999999'),'.'),' ') || '<|>' ||
  NVL(RTRIM(TO_CHAR(t.F_行番号,'FM999999999999999999999999999990.999999'),'.'),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_売上区分, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_売上日, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_注文番号, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_得意先番号, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_請求先番号, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_在庫品目番号, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_品目区分, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_倉庫番号, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(RTRIM(TO_CHAR(t.F_数量,'FM999999999999999999999999999990.999999'),'.'),' ') || '<|>' ||
  NVL(RTRIM(TO_CHAR(t.F_単価,'FM999999999999999999999999999990.999999'),'.'),' ') || '<|>' ||
  NVL(RTRIM(TO_CHAR(t.F_金額,'FM999999999999999999999999999990.999999'),'.'),' ') || '<|>' ||
  NVL(RTRIM(TO_CHAR(t.F_税額,'FM999999999999999999999999999990.999999'),'.'),' ') || '<|>' ||
  NVL(RTRIM(TO_CHAR(t.F_税額２,'FM999999999999999999999999999990.999999'),'.'),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_請求明細, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_締日繰越, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_得意先元帳, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_月次繰越, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_更新担当, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_照会項目, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TO_CHAR(t.F_登録日,'YYYY/MM/DD HH24:MI:SS'),' ') || '<|>' ||
  NVL(TO_CHAR(t.F_更新日,'YYYY/MM/DD HH24:MI:SS'),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.X_備考, CHR(9)||CHR(10)||CHR(13), '   ')),' ')
FROM PRONES.TB_売上実績新情報 t
WHERE t.F_売上日 >= '2025/01/01' AND MOD(ORA_HASH(t.F_売上番号||'#'||t.F_行番号), 4) = 3;