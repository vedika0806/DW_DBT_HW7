## Overview
This repository contains a dbt project connected to **Snowflake**, built as part of the *Week 10 ELT Deep Dive* assignment.  
It demonstrates end-to-end ELT workflows using dbt:
- Configuring dbt with the Snowflake adapter  
- Creating input and output models  
- Building a snapshot for historical tracking  
- Adding schema tests for data validation  

---

## Project Setup

### Prerequisites
- macOS with Python 3.8+  
- dbt-snowflake adapter installed (`pip install dbt-snowflake`)  
- Access to a Snowflake account  
- A valid `profiles.yml` under `~/.dbt/` with your Snowflake connection details  

Example connection:

```yaml
snowflake_project:
  target: dev
  outputs:
    dev:
      type: snowflake
      account: <your_account>
      user: <your_user>
      password: <your_password>
      role: TRAINING_ROLE
      database: USER_DB_CAT
      warehouse: CAT_QUERY_WH
      schema: RAW

snowflake_project/
├── dbt_project.yml
├── models/
│   ├── input/
│   │   ├── session_timestamp.sql
│   │   └── user_session_channel.sql
│   ├── output/
│   │   └── session_summary.sql
│   ├── sources.yml
│   └── schema.yml
├── snapshots/
│   └── snapshot_session_summary.sql
└── README.md
