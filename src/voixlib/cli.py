from sys import argv
from typing import Callable


class Cli:
    cmds: dict[str, Callable[[], int]] = {}

    def run(self):
        """
        :param self: needs self
        :return bool: to tell success
        :return int: to return function command exit code
        """
        command = ""

        if len(argv) >= 2:
            command = argv[1]

        for i, v in self.cmds.items():
            if command == i:
                result = v()
                return True, result

        return False
