import logging
import time

logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')

def main():
    while True:
        logging.info("Producing a message...")
        time.sleep(5)

if __name__ == "__main__":
    main()