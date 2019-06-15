import  logging
logging.basicConfig(
    filename="testlog.txt",
    level = logging.DEBUG,
    format = '%(asctime)s  - %(levelname)s-[%(lineno)s] - %(message)s'
)
logger = logging.getLogger(__name__)
logger.info('info')
logger.warn('warn')