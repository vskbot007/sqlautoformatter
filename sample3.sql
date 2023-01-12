SELECT
  call.*,
  DATEDIFF("SECOND", call.start_time, call.end_time) AS call_duration
FROM
  call
ORDER BY call.employee_id, call.start_time;
