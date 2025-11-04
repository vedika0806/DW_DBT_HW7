SELECT
  u.userId,
  u.sessionId,
  u.channel,
  s.ts
FROM {{ ref('user_session_channel') }} u
JOIN {{ ref('session_timestamp') }} s
  ON u.sessionId = s.sessionId
