set -g VIRTUALFISH_VERSION 2.5.4
set -g VIRTUALFISH_PYTHON_EXEC /Library/Developer/CommandLineTools/usr/bin/python3
set -g VIRTUALFISH_HOME $HOME/.virtualenvs
source (python3 -m site --user-site)/virtualfish/virtual.fish
emit virtualfish_did_setup_plugins