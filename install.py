import os


files = ["~/.vim", "~/.vimrc", "~/.bashrc", "~/.tmux.conf"]


def backup(source):
    if os.path.exists(source):
        os.system(f" mv {source} {source}.bak")


def restore(source):
    if os.path.exists(source):
        os.system(f" mv {source}.bak {source}")


# backup files and directories

for file in files:
    #backup(file)


