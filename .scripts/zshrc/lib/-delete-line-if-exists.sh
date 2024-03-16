#!/bin/zsh
# -------------------------------------------------------------------------------------
#
#     TOBE ADDED - Licence & Copyright Disclaimer
#
# -------------------------------------------------------------------------------------

. ./.scripts/loggers/lib/--index-api.sh

. ./.scripts/zshrc/lib/-source.sh

_zshrc_deleteLineIfExists() {
    local FUNCTION_NAME="_zshrc_deleteLineIfExists"

    local LINE="${1}"
    _loggers_info "${FUNCTION_NAME}" "${LINE}"

    local EXISTS=$(
        cat ~/.zshrc | grep "${LINE}"
    )
    if
        [ ! -z "${EXISTS}" ]
    then
        grep -v "${LINE}" ~/.zshrc >~/.zshrc.backup
        rm ~/.zshrc
        mv ~/.zshrc.backup ~/.zshrc
        _zshrc_source
    else
        _loggers_warn "${FUNCTION_NAME}" ".zshrc does not have provided line: ${LINE}"
    fi
}
