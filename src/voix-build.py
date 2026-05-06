from voixlib.lua import read_config
from rich import print as rprint
from voixlib.env import update_env, env
from voixlib.cli import Cli
from voixlib.apply import apply_hostname

update_env()


def now() -> int:
    config = read_config(env["VOIX_CONFIG_PATH"])
    apply_hostname(config)
    return 0


cli = Cli()
cli.cmds = {"now": now}

exit_code = cli.run()

if exit_code == cli.ARGS_EMPTY:
    rprint("[red]you haven't spefied a command[/]")
elif exit_code == cli.CMD_NOT_FOUND:
    rprint("[red]Command not Found[/]")
