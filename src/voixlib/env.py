# directory where i will store envirmental config variables for voix
from pathlib import Path
from subprocess import run


VOIX_CONFIG_PATH = Path("/etc/voix/conf.lua")

env = {"VOIX_CONFIG_PATH": VOIX_CONFIG_PATH}


def update_env():
    result = ""
    for i in env.keys():
        process = run(["echo", "$" + i], capture_output=True, text=True, shell=True)
        result = process.stdout.strip()
        if result != "":
            env[i] = Path(result)
