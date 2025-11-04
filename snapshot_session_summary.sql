{% snapshot snapshot_session_summary %}
{{
  config(
    target_schema='SNAPSHOT',
    unique_key='sessionId',
    strategy='timestamp',
    updated_at='ts'
  )
}}

SELECT * FROM {{ ref('session_summary') }}

{% endsnapshot %}
