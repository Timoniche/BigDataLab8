import configparser
import pathlib

from pyspark.sql import SparkSession, DataFrame


class DatasetLoader:
    def __init__(
            self,
            spark_session: SparkSession,
    ):
        self.config = configparser.ConfigParser()
        self.config.read('config.ini')
        self.spark_session = spark_session
        self.curdir = str(pathlib.Path(__file__).parent.resolve())

    def load_dataset(self) -> DataFrame:
        dataset = self.spark_session.read.csv(
            self.curdir + '/' + self.config['dataset']['datasetPath'],
            header=True,
            inferSchema=True,
            sep='\t',
        )
        dataset.fillna(value=0)

        return dataset
