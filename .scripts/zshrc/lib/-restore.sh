#!/bin/zsh
# -------------------------------------------------------------------------------------
#
#     TOBE ADDED - Licence & Copyright Disclaimer
#
# -------------------------------------------------------------------------------------

. ./.scripts/loggers/lib/--index-api.sh

_zshrc_restore() {
    local FUNCTION_NAME="_zshrc_restore"
    _loggers_info "${FUNCTION_NAME}"

    _loggers_info "${FUNCTION_NAME}" "${LOCAL_HOME_DIR}/.zshrc/zshrc --> ~/.zshrc"

    rm -rf ~/.zshrc-utils
    rm -rf ~/.zshrc

    cp ${LOCAL_HOME_DIR}/.zshrc/zshrc ~/.zshrc
    cp -r ${LOCAL_HOME_DIR}/.zshrc/utils "${HOME}/.zshrc-utils"

    _loggers_emptyLine
    cat ~/.zshrc
    _loggers_emptyLine
    ls -la ~/.zshrc-utils
    _loggers_emptyLine

    _loggers_info "${FUNCTION_NAME}" "Sourcing ~/.zshrc file"

    source ~/.zshrc
}
