# directory where i will store envirmental config variables for voix
from pathlib import Path
from subprocess import run


VOIX_CONFIG_PATH = Path("/etc/voix/conf.lua")
VOIX_HOSTNAME_FILE = Path("/etc/hostname")

env = {
    "VOIX_CONFIG_PATH": VOIX_CONFIG_PATH,
    "VOIX_HOSTNAME_FILE": VOIX_HOSTNAME_FILE,
}


def update_env():
    result = ""
    for i in env.keys():
        process = run(["echo", "$" + i], capture_output=True, text=True, shell=True)
        result = process.stdout.strip()
        if result != "":
            env[i] = Path(result)
