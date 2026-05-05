from rich import print as rprint
from voixlib.env import update_env, env
from voixlib.cli import Cli

update_env()


cli = Cli()
cli.cmds = {}
if not cli.run():
    rprint("[red]Command not Found[/]")
