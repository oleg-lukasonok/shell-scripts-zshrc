#!/bin/zsh
# -------------------------------------------------------------------------------------
#
#     TOBE ADDED - Licence & Copyright Disclaimer
#
# -------------------------------------------------------------------------------------

. ./.scripts/loggers/lib/--index-api.sh

. ./.scripts/zshrc/lib/-source.sh

_zshrc_addLineIfNotExists() {
    local FUNCTION_NAME="_zshrc_addLineIfNotExists"

    local LINE="${1}"

    _loggers_info "${FUNCTION_NAME}" "${LINE}"

    local EXISTS=$(
        cat ~/.zshrc | grep "${LINE}"
    )
    if
        [ -z "${EXISTS}" ]
    then
        echo "${LINE}" >>~/.zshrc
        _zshrc_source
    else
        _loggers_warn "${FUNCTION_NAME}" ".zshrc already has provided line: ${LINE}"
    fi
}
