#!/bin/zsh
# -------------------------------------------------------------------------------------
#
#     TOBE ADDED - Licence & Copyright Disclaimer
#
# -------------------------------------------------------------------------------------

. ./.scripts/loggers/lib/--index-api.sh

_zshrc_source() {
    local FUNCTION_NAME="_zshrc_source"
    _loggers_info "${FUNCTION_NAME}"

    _loggers_emptyLine
    cd $HOME
    source .zshrc
    cd $NI_HOME_DIR
    _loggers_emptyLine
}
