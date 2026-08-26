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
  NVL(TRIM(TRANSLATE(t.F_納入品目番号, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_納入品目ベース番号, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_品目名称, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_英語名称, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_形式, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_在庫用品目番号, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_品目区分, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_得意先番号, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_得意先図面, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_図面取得日, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_図面格納場所, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_検査治具番号, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_見積書格納場所, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_指示先番号, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_初物出荷日, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(RTRIM(TO_CHAR(t.F_重量,'FM999999999999999999999999999990.999999'),'.'),' ') || '<|>' ||
  NVL(RTRIM(TO_CHAR(t.F_回路数,'FM999999999999999999999999999990.999999'),'.'),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_装置番号, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_品目分類, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_受注区分, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_手配区分, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_内示生成区分, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_所要量計算区分, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(RTRIM(TO_CHAR(t.F_安全在庫数,'FM999999999999999999999999999990.999999'),'.'),' ') || '<|>' ||
  NVL(RTRIM(TO_CHAR(t.F_手配ロット,'FM999999999999999999999999999990.999999'),'.'),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_ＢＥＩ指示, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_在庫場所, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_棚番, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_備考, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_ＢＥＩ見積日, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(RTRIM(TO_CHAR(t.F_ＢＥＩ計算材料費,'FM999999999999999999999999999990.999999'),'.'),' ') || '<|>' ||
  NVL(RTRIM(TO_CHAR(t.F_BEI_SELLING_PRICE,'FM999999999999999999999999999990.999999'),'.'),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_エクセルリンク先, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_担当者, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_依頼者, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_更新日付, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_更新時刻, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_照会項目, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(TO_CHAR(t.F_登録日,'YYYY/MM/DD HH24:MI:SS'),' ') || '<|>' ||
  NVL(TO_CHAR(t.F_更新日,'YYYY/MM/DD HH24:MI:SS'),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_手配計画区分, CHR(9)||CHR(10)||CHR(13), '   ')),' ') || '<|>' ||
  NVL(RTRIM(TO_CHAR(t.F_出荷数,'FM999999999999999999999999999990.999999'),'.'),' ') || '<|>' ||
  NVL(TO_CHAR(t.F_TOBEI_DATE,'YYYY/MM/DD HH24:MI:SS'),' ') || '<|>' ||
  NVL(TRIM(TRANSLATE(t.F_類似品番, CHR(9)||CHR(10)||CHR(13), '   ')),' ')
FROM PRONES.TB_納入品目情報 t
WHERE MOD(ORA_HASH(t.F_納入品目番号), 2) = 1;