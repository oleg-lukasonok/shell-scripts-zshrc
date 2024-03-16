#!/bin/bash
# -------------------------------------------------------------------------------------
#
# PLACEHOLDER_COPYRIGHT
#
# PLACEHOLDER_LICENCE
#
# -------------------------------------------------------------------------------------

. ./.scripts/loggers/lib/--index-api.sh

_zshrc_backup() {
    local FUNCTION_NAME="_zshrc_backup"
    _loggers_info "${FUNCTION_NAME}"

    _loggers_info "${FUNCTION_NAME}" "~/.zshrc --> ${LOCAL_HOME_DIR}/.zshrc/zshrc"

    rm -rf ${LOCAL_HOME_DIR}/.zshrc/zshrc/utils
    rm -rf ${LOCAL_HOME_DIR}/.zshrc/zshrc

    cp "${HOME}/.zshrc" ${LOCAL_HOME_DIR}/.zshrc/zshrc
    cp -r "${HOME}/.zshrc-utils/" ${LOCAL_HOME_DIR}/.zshrc/utils

    _loggers_emptyLine
    cat "${LOCAL_HOME_DIR}/.zshrc/zshrc"
    _loggers_emptyLine
    ls -la .zshrc/utils
}
