#########################
# 分割ファイル読み込み
#########################

ZSH_HOME="${HOME}/.zsh"
# shellcheck disable=SC2046
CURRENT=$(cd $(dirname $0) || exit; pwd)

if [ -d "$ZSH_HOME" ] && [ -r "$ZSH_HOME" ] && [ -x "$ZSH_HOME" ];
then
  RC_STORAGE="$CURRENT/rc"

  for i in "$RC_STORAGE"/*;
  do
    # shellcheck disable=SC1090
    [[ ${i##*/} = *.rc.zsh ]] && [ -f "$i" ] && [ -r "$i" ] && . "$i"
  done
fi
