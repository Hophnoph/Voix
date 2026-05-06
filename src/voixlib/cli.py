from sys import argv
from typing import Callable


class Cli:
    cmds: dict[str, Callable[[], int]] = {}
    ARGS_EMPTY = 253
    CMD_NOT_FOUND = 254
    # ERROR = 255

    def run(self):
        """
        :param self
        :return int
        """
        command = ""

        if len(argv) >= 2:
            command = argv[1]

        if command == "":
            return self.ARGS_EMPTY

        for i, v in self.cmds.items():
            if command == i:
                result = v()
                return result

        return self.CMD_NOT_FOUND
