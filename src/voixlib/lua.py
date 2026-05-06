from lupa import LuaRuntime
from pathlib import Path

lua = LuaRuntime(unpack_returned_tuples=True)


def read_config(path: Path):
    if path.exists() and path.is_file():
        return lua.execute(path.read_text())
    else:
        return None
