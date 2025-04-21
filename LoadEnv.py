# THIS IS  A PYTHON FILE THAT LOADS ENV VARIABLE INTO ROBOT FRAMEWORK FOR SOME TEST 

from dotenv import load_dotenv, dotenv_values
import os

class LoadEnv:
    def __init__(self):
        print("🚀 LoadEnv initialized")
        load_dotenv()  # Load .env into environment variables

    def get_env_variable(self, key):
        print(f"🔍 Fetching: {key}")
        return os.getenv(key)

    def print_all_env_variables(self):
        print("🌍 All environment variables (system + .env):")
        for key, value in os.environ.items():
            print(f"{key} = {value}")

    def print_only_env_file_vars(self):
        print("📄 Only variables from .env file:")
        env_vars = dotenv_values()  # Only reads variables from the file, not the whole environment
        for key, value in env_vars.items():
            print(f"{key} = {value}")


if __name__ == "__main__":
    env_loader = LoadEnv()
    
    # 🔽 Example: Get a specific variable
    secret = env_loader.get_env_variable("MY_SECRET_KEY")
    print(f"✅ MY_SECRET_KEY: {secret}\n")

    # 🔽 Example: Print only the variables defined in your .env file
    env_loader.print_only_env_file_vars()

    # 🔽 Optional: Print everything in the environment (system + .env)
    # env_loader.print_all_env_variables()
