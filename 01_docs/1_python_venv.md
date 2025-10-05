Go to root folder to create a python virtual environment by running the command:

`python -m venv py_venv`

where `py_venv` is the name of the virtual environment.

To run the environment, execute in `cmd`:  `activate.bat` found on `\py_venv\Scripts\`


`pip install dbt-core`

`dbt init databuildtool`

Since we are connecting to an Oracle database, we install a driver:

`pip install dbt-core dbt-oracle`