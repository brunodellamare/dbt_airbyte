SELECT
  *,
  TIMESTAMP(
    SUBSTR(dateHourMinute, 1, 4) || '-' ||
    SUBSTR(dateHourMinute, 5, 2) || '-' ||
    SUBSTR(dateHourMinute, 7, 2) || ' ' ||
    SUBSTR(dateHourMinute, 9, 2) || ':' ||
    SUBSTR(dateHourMinute, 11, 2) ||
     ':00'
  ) AS timestamp
FROM
  `inteligencia-gglobo-sandbox.user_gustavo.teste_source_camp_source_session_start` WHERE dateHourMinute <> '(other)'