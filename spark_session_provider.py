import configparser

from pyspark.sql import SparkSession


class SparkSessionProvider:
    def __init__(self):
        self.config = configparser.ConfigParser()
        self.config.read('config.ini')
        self.spark_session = SparkSession.builder \
            .master(self.config['spark']['master']) \
            .appName(self.config['spark']['appName']) \
            .config("spark.driver.memory", self.config['spark']['driver.memory']) \
            .config("spark.executor.memory", self.config['spark']['executor.memory']) \
            .config("spark.driver.cores", self.config['spark']['driver.cores']) \
            .config("spark.executor.cores", self.config['spark']['executor.cores']) \
            .getOrCreate()

    def provide_session(self) -> SparkSession:
        return self.spark_session
