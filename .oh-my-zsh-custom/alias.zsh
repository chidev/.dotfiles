alias zconf="code ~/.zshrc"
alias ohmy="code ~/.oh-my-zsh"
# alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"
# alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

autocannond() {
  command /Users/2500320/.nvm/versions/node/v8.11.3/bin/autocannon "$@"
}

aem() {
  cd ~/Projects/aem6.3
  java -Xdebug -Xmx4096m -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=8765 -jar AEM_6.3_Quickstart.jar
}

aemwoh() {
  cd ~/Projects/aem6.3-woh
  java -Dsling.run.modes=author,int5 -Xdebug -Xmx4096m -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=8765 -jar AEM_6.3_Quickstart.jar
}

alias mvnbuildfull="mvn clean install -PautoInstallPackage"
alias mvnbuild="mvn -PautoInstallPackage clean install -Dcheckstyle.skip=true -Dmaven.test.skip=true -Dpmd.skip=true -Dpsr.fe.skip=true"
alias myip="ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'"

export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin:$PATH"
export PATH="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin:$PATH"

function blt() {
  if [ "`git rev-parse --show-cdup 2> /dev/null`" != "" ]; then
    GIT_ROOT=$(git rev-parse --show-cdup)
  else
    GIT_ROOT="."
  fi

  if [ -f "$GIT_ROOT/vendor/bin/blt" ]; then
    $GIT_ROOT/vendor/bin/blt "$@"
  else
    echo "You must run this command from within a BLT-generated project repository."
    return 1
  fi
}
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn
