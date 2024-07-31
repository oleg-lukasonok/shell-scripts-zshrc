#!/bin/zsh
# -------------------------------------------------------------------------------------
#
#     TOBE ADDED - Licence & Copyright Disclaimer
#
# -------------------------------------------------------------------------------------

. ./.scripts/loggers/lib/--index-api.sh

_zshrc_restore_gitConfig() {
    local FUNCTION_NAME="_zshrc_restore_gitConfig"
    _loggers_info "${FUNCTION_NAME}"

    _loggers_info "${FUNCTION_NAME}" "Removing ~/.gitconfig"
    rm -rf ~/.gitconfig

    _loggers_info "${FUNCTION_NAME}" "Removing ~/.gitconfig-ibm"
    rm -rf ~/.gitconfig-ibm

    _loggers_info "${FUNCTION_NAME}" "Removing ~/.gitconfig-personal"
    rm -rf ~/.gitconfig-personal

    _loggers_info "${FUNCTION_NAME}" "Removing ~/.gitconfig-roche"
    rm -rf ~/.gitconfig-roche

    _loggers_info "${FUNCTION_NAME}" "Copying ${LOCAL_HOME_DIR}/.gitconfig/.gitconfig ~/.gitconfig --> ~/.gitconfig"
    cp ${LOCAL_HOME_DIR}/.gitconfig/.gitconfig ~/.gitconfig

    _loggers_info "${FUNCTION_NAME}" "Copying ${LOCAL_HOME_DIR}/.gitconfig/.gitconfig ~/.gitconfig-ibm --> ~/.gitconfig-ibm"
    cp ${LOCAL_HOME_DIR}/.gitconfig/.gitconfig-ibm ~/.gitconfig-ibm

    _loggers_info "${FUNCTION_NAME}" "Copying ${LOCAL_HOME_DIR}/.gitconfig/.gitconfig ~/.gitconfig-personal --> ~/.gitconfig-personal"
    cp ${LOCAL_HOME_DIR}/.gitconfig/.gitconfig-personal ~/.gitconfig-personal

    _loggers_info "${FUNCTION_NAME}" "Copying ${LOCAL_HOME_DIR}/.gitconfig/.gitconfig ~/.gitconfig-roche --> ~/.gitconfig-roche"
    cp ${LOCAL_HOME_DIR}/.gitconfig/.gitconfig-roche ~/.gitconfig-roche

}
