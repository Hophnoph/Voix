from subprocess import run
from voixlib.env import update_env, env
from rich import print as rprint

update_env()


def apply_hostname(config):
    try:
        hostname = config.system.hostname
        run(["echo", f"'{hostname}'", ">", f"{env['VOIX_HOSTNAME_FILE']}"])
    except Exception as e:
        rprint(f"[red]Something went Wrong {e}[/]")
