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
  NVL(TRIM(TRANSLATE(t.F_得意先番号, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_得意先名称, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_得意先略称, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_敬称, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_英語名称, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_先担当部課, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_先担当, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_先担当敬称, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_経理担当部課, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_経理担当, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_経理担当敬称, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_郵便番号, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_住所１, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_住所２, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_住所３, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_英語住所１, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_英語住所２, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_電話番号, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_ＦＡＸ番号１, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_ＦＡＸ番号２, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(RTRIM(TO_CHAR(t.F_輸送ＬＴ,'FM999999999999999999999999999990.999999'),'.'),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_請求先番号, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_納品書発行, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_在庫引当区分, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_個別登録, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_検収区分, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_担当者, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_更新日付, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_更新時刻, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_照会項目, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TO_CHAR(t.F_登録日,'YYYY/MM/DD HH24:MI:SS'),' ') || '<|>' ||
  NVL(TO_CHAR(t.F_更新日,'YYYY/MM/DD HH24:MI:SS'),' ') || '<|>' ||
  NVL(RTRIM(TO_CHAR(t.F_検査ＬＴ,'FM999999999999999999999999999990.999999'),'.'),' ') || '<|>' ||
  NVL(RTRIM(TO_CHAR(t.F_予備ＬＴ,'FM999999999999999999999999999990.999999'),'.'),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_印刷Ｂ, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_切断余長区分, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_生産担当, CHR(9)||CHR(10)||CHR(13), '   ')),' ')
FROM PRONES.TB_得意先情報 t
;