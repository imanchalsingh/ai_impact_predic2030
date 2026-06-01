import pandas as pd
from sqlalchemy import create_engine

df = pd.read_csv("AI_Impact_on_Jobs_2030.csv")

engine = create_engine(
    "mysql+pymysql://root:cscorner@localhost/ai_impact_data"
)

df.to_sql(
    "ai_impact_data",
    con=engine,
    if_exists="replace",
    index=False
)