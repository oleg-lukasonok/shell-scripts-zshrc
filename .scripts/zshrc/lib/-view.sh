#!/bin/zsh
# -------------------------------------------------------------------------------------
#
#     TOBE ADDED - Licence & Copyright Disclaimer
#
# -------------------------------------------------------------------------------------

. ./.scripts/loggers/lib/--index-api.sh

_zshrc_view() {
    local FUNCTION_NAME="_zshrc_view"
    _loggers_info "${FUNCTION_NAME}"

    _loggers_emptyLine
    cd $HOME
    cat .zshrc
    cd $NI_HOME_DIR
    _loggers_emptyLine
}
